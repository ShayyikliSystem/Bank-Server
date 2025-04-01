package com.bank.dummyserver.dtos;

import java.math.BigDecimal;

public class UserBalanceResponseDTO {
    private String firstName;
    private String familyName;
    private BigDecimal balance;

    public UserBalanceResponseDTO(String firstName, String familyName, BigDecimal balance) {
        this.firstName = firstName;
        this.familyName = familyName;
        this.balance = balance;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getFamilyName() {
        return familyName;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }
}
