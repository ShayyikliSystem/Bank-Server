package com.bank.dummyserver.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bank.dummyserver.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByFirstNameAndFamilyNameAndIdNumberAndCardNumberAndExpiryDateAndSecurityCode(
            String firstName,
            String familyName,
            String idNumber,
            String cardNumber,
            String expiryDate,
            String securityCode);

    boolean existsByIdNumberAndCardNumberAndExpiryDateAndSecurityCode(String idNumber, String cardNumber,
            String expiryDate, String securityCode);

    Optional<User> findByCardNumber(String cardNumber);
    Optional<User> findByshayyikliAccountNumber(Integer cardNumber);
    
}
