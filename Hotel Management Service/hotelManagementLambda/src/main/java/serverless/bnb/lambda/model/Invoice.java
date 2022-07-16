package serverless.bnb.lambda.model;

import com.amazonaws.services.dynamodbv2.datamodeling.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Calendar;
import java.util.List;

@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@DynamoDBDocument
public class Invoice {

//    private static final float PERCENT_TAX = 15F;
//    private String id;
    private String userId;
    private String bookingNumber;
    private List<InvoiceLine> invoiceLines;
//    private float taxAmount;
    private Calendar invoiceDate;

//    @DynamoDBHashKey(attributeName = "Id")
//    @DynamoDBAutoGeneratedKey
//    public String getId() {
//        return id;
//    }

//    @DynamoDBAttribute(attributeName = "UserId")
//    public String getUserId() {
//        return userId;
//    }

    @DynamoDBAttribute(attributeName = "BookingNumber")
    public String getBookingNumber() {
        return bookingNumber;
    }

    @DynamoDBAttribute(attributeName = "InvoiceLines")
    public List<InvoiceLine> getInvoiceLines() {
        return invoiceLines;
    }

//    @DynamoDBAttribute(attributeName = "TaxAmount")
//    public float getTaxAmount() {
//        return taxAmount;
//    }

    @DynamoDBAttribute(attributeName = "InvoiceDate")
    public Calendar getInvoiceDate() {
        return invoiceDate;
    }

//    public void setTaxAmount() {
//        float totalAmount = invoiceLines.stream().map(InvoiceLine::getAmount).reduce((sum, amount) -> sum + amount).get();
//        taxAmount = (15/100) * totalAmount;
//    }
}
