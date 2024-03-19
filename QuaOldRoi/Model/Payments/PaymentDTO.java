/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj301demo.Model.Payments;

import java.sql.Date;



/**
 *
 * @author Lenovo
 */
public class PaymentDTO {
     private int id;
    private int bookingId;
    private String paymentMethod;
    private String transaction_id;
    private Date transaction_time;

    public PaymentDTO() {
    }

    public PaymentDTO(int id, int bookingId, String paymentMethod, String transaction_id, Date transaction_time) {
        this.id = id;
        this.bookingId = bookingId;
        this.paymentMethod = paymentMethod;
        this.transaction_id = transaction_id;
        this.transaction_time = transaction_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getTransaction_id() {
        return transaction_id;
    }

    public void setTransaction_id(String transaction_id) {
        this.transaction_id = transaction_id;
    }

    public Date getTransaction_time() {
        return transaction_time;
    }

    public void setTransaction_time(Date transaction_time) {
        this.transaction_time = transaction_time;
    }
    
    
}
