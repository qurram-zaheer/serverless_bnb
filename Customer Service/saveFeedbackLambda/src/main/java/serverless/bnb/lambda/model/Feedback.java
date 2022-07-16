package serverless.bnb.lambda.model;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAttribute;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAutoGeneratedKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBTable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@DynamoDBTable(tableName = "Feedback")
public class Feedback {

    private String id;
    private String userId;
    private String header;
    private String body;
    private String bookingNumber;

    @DynamoDBHashKey(attributeName = "Id")
    @DynamoDBAutoGeneratedKey
    public String getId() {
        return id;
    }

    @DynamoDBAttribute(attributeName = "UserId")
    public String getUserId() {
        return userId;
    }

    @DynamoDBAttribute(attributeName = "Header")
    public String getHeader() {
        return header;
    }

    @DynamoDBAttribute(attributeName = "Body")
    public String getBody() {
        return body;
    }

    @DynamoDBAttribute(attributeName = "BookingNumber")
    public String getBookingNumber() {
        return bookingNumber;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "id='" + id + '\'' +
                ", userId='" + userId + '\'' +
                ", header='" + header + '\'' +
                ", body='" + body + '\'' +
                ", bookingNumber='" + bookingNumber + '\'' +
                '}';
    }
}
