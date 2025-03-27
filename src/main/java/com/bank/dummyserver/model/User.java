package com.bank.dummyserver.model;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Digits;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    @NotNull(message = "First name is required")
    @Size(min = 2, max = 50, message = "First name must be between 2 and 50 characters")
    private String firstName;

    @Column(nullable = false)
    @NotNull(message = "Family name is required")
    @Size(min = 2, max = 50, message = "Family name must be between 2 and 50 characters")
    private String familyName;

    @Column(nullable = false)
    @NotNull(message = "ID number is required")
    @Pattern(regexp = "\\d{9}", message = "ID number must be exactly 9 digits")
    private String idNumber;

    @Column(unique = true, nullable = false)
    @NotNull(message = "Card number is required")
    @Pattern(regexp = "\\d{16}", message = "Card number must be exactly 16 digits")
    private String cardNumber;

    @Column(nullable = false)
    @NotNull(message = "Expiry date is required")
    @Pattern(regexp = "\\d{2}/\\d{2}", message = "Expiry date must be in MM/YY format")
    private String expiryDate;

    @Column(unique = true, nullable = false)
    @NotNull(message = "Security code is required")
    @Pattern(regexp = "\\d{3}", message = "Security code must be exactly 3 digits")
    private String securityCode;

    @Column(precision = 10, scale = 2, nullable = false)
    @NotNull(message = "Balance is required")
    @DecimalMin(value = "0.00", inclusive = true, message = "Balance must be a positive number")
    @Digits(integer = 8, fraction = 2, message = "Balance must have up to 8 digits and 2 decimal places")
    private BigDecimal balance;

    @Column(name = "shayyikli_account_number", unique = true, length = 6)
    private Integer shayyikliAccountNumber;

    public User() {
    }

    public User(String firstName, String familyName, String idNumber, String cardNumber, String expiryDate,
            String securityCode, BigDecimal balance) {
        this.firstName = firstName;
        this.familyName = familyName;
        this.idNumber = idNumber;
        this.cardNumber = cardNumber;
        this.expiryDate = expiryDate;
        this.securityCode = securityCode;
        this.balance = balance;
    }

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

    public BigDecimal getBalance() {
        return balance;
    }

    public Integer getShayyikliAccountNumber() {
        return shayyikliAccountNumber;
    }

    public void setShayyikliAccountNumber(Integer shayyikliAccountNumber) {
        this.shayyikliAccountNumber = shayyikliAccountNumber;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }
}
