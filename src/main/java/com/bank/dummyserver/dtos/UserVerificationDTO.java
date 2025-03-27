package com.bank.dummyserver.dtos;

public class UserVerificationDTO {
    private String firstName;
    private String familyName;
    private String idNumber;
    private String cardNumber;
    private String expiryDate;
    private String securityCode;

    public String getFirstName() {
        return firstName;
    }

    public String getFamilyName() {
        return familyName;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public String getSecurityCode() {
        return securityCode;
    }
}
