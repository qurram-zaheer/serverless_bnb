package serverless.bnb.lambda.function;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBScanExpression;
import com.amazonaws.services.dynamodbv2.model.AttributeValue;
import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.amazonaws.services.lambda.runtime.events.APIGatewayProxyRequestEvent;
import com.amazonaws.services.lambda.runtime.events.APIGatewayProxyResponseEvent;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.*;
import serverless.bnb.lambda.DynamoDB;
import serverless.bnb.lambda.model.Room;
import serverless.bnb.lambda.model.RoomBooking;
import serverless.bnb.lambda.model.RoomType;
import serverless.bnb.lambda.model.Status;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

public class BookRoom implements
        RequestHandler<APIGatewayProxyRequestEvent, APIGatewayProxyResponseEvent>  {

    @Override
    public APIGatewayProxyResponseEvent handleRequest(APIGatewayProxyRequestEvent requestEvent, Context context) {
        Map<String, String> queryParams = requestEvent.getHeaders();
        String contentType = queryParams.get("Content-Type");
        APIGatewayProxyResponseEvent response;

        if (!contentType.isEmpty() && !contentType.contains("application/json")) {
            return getAPIGatewayResponse(400, "Invalid content type", "text/plain");
        }

        try {
            String requestBody = requestEvent.getBody();
            BookRoomInput input = new ObjectMapper().readValue(requestBody, BookRoomInput.class);
            if (!input.isValid()) {
                return getAPIGatewayResponse(400, "Invalid input", "text/plain");
            }
            else {
                if (isAvailable(input)) {
                    createBooking(input);
                    response = getAPIGatewayResponse(200, "Booking created successfully", "text/plain");
                } else {
                    response = getAPIGatewayResponse(200,
                            "The request room is not available for date " + input.getCheckIn(),
                            "text/plain");
                }
            }
        }
        catch (Exception e) {
            System.err.println("An exception occurred while processing the request :" + e.getMessage());
            e.printStackTrace();
            response = getAPIGatewayResponse(500,
                    "An error occurred while processing the request", "text/plain");
        }
        return response;
    }

    public boolean isAvailable(BookRoomInput input) throws Exception {
        boolean isAvailable;

        DynamoDBMapper mapper = DynamoDB.getMapper();
        Map<String, AttributeValue> roomBookingAttrVal = input.getDynamoDBSearchExpressionValues();
        DynamoDBScanExpression roomBookingExp = new DynamoDBScanExpression()
                .withFilterExpression("CheckIn >= :checkIn " +
                        "and CheckOut <= :checkOut " +
                        "and RoomType = :roomType " +
                        "and BookingStatus = :status")
                .withExpressionAttributeValues(roomBookingAttrVal);

        List<RoomBooking> bookedRooms = mapper.scan(RoomBooking.class, roomBookingExp);
        if (bookedRooms.isEmpty()) {
            isAvailable = true;
        } else {
            Map<String, AttributeValue> roomAttrVal = new HashMap<>();
            roomAttrVal.put(":roomType", new AttributeValue().withS(RoomType.getRoomType(input.getRoomType()).name()));
            DynamoDBScanExpression roomExp = new DynamoDBScanExpression()
                    .withFilterExpression("RoomType = :roomType")
                    .withExpressionAttributeValues(roomAttrVal);
            List<Room> rooms = mapper.scan(Room.class, roomExp);
            if (Optional.of(rooms).isPresent() && rooms.size() > 0) {
                isAvailable = rooms.get(0).getTotalRooms() - bookedRooms.size() > 0;
            } else {
                throw new Exception("Room not found for type : " + input.getRoomType());
            }
        }
        return isAvailable;
    }

    public void createBooking(BookRoomInput input) throws ParseException {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");

        Date checkInDate = dateFormatter.parse(input.getCheckIn());
        checkInDate.setTime(checkInDate.getTime() + 12L * 60L * 60L * 1000L);
        Calendar checkIn = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        checkIn.setTime(checkInDate);

        Date checkOutDate = dateFormatter.parse(input.getCheckOut());
        checkOutDate.setTime(checkOutDate.getTime() + 10L * 60L * 60L * 1000L);
        Calendar checkOut = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        checkOut.setTime(checkOutDate);

        RoomBooking newBooking = RoomBooking.builder()
                .userId(input.userId)
                .roomType(RoomType.getRoomType(input.getRoomType()))
                .checkIn(checkIn)
                .checkOut(checkOut)
                .bookingDate(Calendar.getInstance())
                .amountPaid(Float.parseFloat(input.amountPaid))
                .status(Status.VALID)
                .build();
        newBooking.generateBookingNumber();
        DynamoDBMapper mapper = DynamoDB.getMapper();
        mapper.save(newBooking);
    }

    APIGatewayProxyResponseEvent getAPIGatewayResponse(int statusCode, String responseBody, String contentType) {
        APIGatewayProxyResponseEvent response = new APIGatewayProxyResponseEvent();
        response.setBody(responseBody);
        response.setStatusCode(statusCode);
        Map<String, String> headers = new HashMap<>();
        headers.put("X-Custom-Header", "Response: Browse Rooms");
        headers.put("Content-Type", contentType);
        headers.put("Access-Control-Allow-Origin", "*");
        response.setHeaders(headers);
        return response;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class BookRoomInput {
        private String checkIn;
        private String checkOut;
        private String userId;
        private String roomType;
        private String amountPaid;
        private String paidCurrency;

        @Override
        public String toString() {
            return "BookRoomInput{" +
                    "checkIn='" + checkIn + '\'' +
                    ", checkOut='" + checkOut + '\'' +
                    ", userId='" + userId + '\'' +
                    ", roomType='" + roomType + '\'' +
                    ", amountPaid='" + amountPaid + '\'' +
                    ", paidCurrency='" + paidCurrency + '\'' +
                    '}';
        }

        @JsonIgnore
        public boolean isValid() {
            boolean isValid = true;
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            try {
                dateFormat.parse(checkIn);
                dateFormat.parse(checkOut);
                Float.parseFloat(amountPaid);
            }
            catch (ParseException | NumberFormatException exception) {
                isValid = false;
            }
            if (Objects.isNull(userId)
                    || !RoomType.isValid(roomType)
                    || Objects.isNull(paidCurrency)
                    || paidCurrency.isEmpty()) {
                isValid = false;
            }
            System.out.println("Is valid search criteria :" + isValid);
            return isValid;
        }

        @JsonIgnore
        public Map<String, AttributeValue> getDynamoDBSearchExpressionValues() throws ParseException {

            SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
            Date checkInDate = dateFormatter.parse(checkIn);
            checkInDate.setTime(checkInDate.getTime() + 12L * 60L * 60L * 1000L);
            Date checkOutDate = dateFormatter.parse(checkOut);
            checkOutDate.setTime(checkOutDate.getTime() + 10L * 60L * 60L * 1000L);

            SimpleDateFormat dbDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            dbDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String checkInDateString = dbDateFormat.format(checkInDate.getTime());
            String checkOutDateString = dbDateFormat.format(checkOutDate.getTime());
            System.out.println("Parsed checkin date " + checkInDateString);
            System.out.println("Parsed checkout date " + checkOutDateString);

            Map<String, AttributeValue> expression = new HashMap<>();
            expression.put(":checkIn", new AttributeValue().withS(checkInDateString));
            expression.put(":checkOut", new AttributeValue().withS(checkOutDateString));
            expression.put(":roomType", new AttributeValue().withS(RoomType.getRoomType(roomType).name()));
            expression.put(":status", new AttributeValue().withS(Status.VALID.name()));
            return expression;
        }

    }
}