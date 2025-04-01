package com.bank.dummyserver.Service;

import java.util.List;
import java.util.Optional;

import com.bank.dummyserver.dtos.UserSummaryDTO;
import com.bank.dummyserver.dtos.UserVerificationDTO;
import com.bank.dummyserver.model.User;

public interface UserService {
    public User getUserIfVerified(UserVerificationDTO dto);

    public boolean verifyUser(UserVerificationDTO dto);

    public List<UserSummaryDTO> getAllUserSummaries();

    public boolean updateShayyikliAccountNumber(String cardNumber, Integer shayyikliAccountNumber);

    public Optional<User> getUserByCardNumber(String cardNumber);

    public Optional<User> getUserByshayyikliAccountNumber(Integer shayyikliAccountNumber);
}
