package com.bank.dummyserver.dtos;

public class UserSummaryDTO {
    private String idNumber;
    private String firstName;
    private String familyName;
    private String cardNumber;

    public UserSummaryDTO(String idNumber, String firstName, String familyName, String cardNumber) {
        this.idNumber = idNumber;
        this.firstName = firstName;
        this.familyName = familyName;
        this.cardNumber = cardNumber;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getFamilyName() {
        return familyName;
    }

    public String getCardNumber() {
        return cardNumber;
    }
}