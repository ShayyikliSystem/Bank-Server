package com.bank.dummyserver.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.dummyserver.dtos.UserSummaryDTO;
import com.bank.dummyserver.dtos.UserVerificationDTO;
import com.bank.dummyserver.model.User;
import com.bank.dummyserver.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public User getUserIfVerified(UserVerificationDTO dto) {
        Optional<User> user = userRepository
                .findByFirstNameAndFamilyNameAndIdNumberAndCardNumberAndExpiryDateAndSecurityCode(
                        dto.getFirstName(),
                        dto.getFamilyName(),
                        dto.getIdNumber(),
                        dto.getCardNumber(),
                        dto.getExpiryDate(),
                        dto.getSecurityCode());

        return user.orElse(null);
    }

    @Override
    public boolean verifyUser(UserVerificationDTO dto) {
        Optional<User> user = userRepository
                .findByFirstNameAndFamilyNameAndIdNumberAndCardNumberAndExpiryDateAndSecurityCode(
                        dto.getFirstName(),
                        dto.getFamilyName(),
                        dto.getIdNumber(),
                        dto.getCardNumber(),
                        dto.getExpiryDate(),
                        dto.getSecurityCode());
        return user.isPresent();
    }

    @Override
    public List<UserSummaryDTO> getAllUserSummaries() {
        return userRepository.findAll().stream()
                .map(user -> new UserSummaryDTO(user.getIdNumber(), user.getFirstName(), user.getFamilyName(),
                        user.getCardNumber()))
                .collect(Collectors.toList());
    }

    @Override
    public boolean updateShayyikliAccountNumber(String cardNumber, Integer shayyikliAccountNumber) {
        Optional<User> userOptional = userRepository.findByCardNumber(cardNumber);

        if (userOptional.isPresent()) {
            User user = userOptional.get();
            user.setShayyikliAccountNumber(shayyikliAccountNumber);
            userRepository.save(user);
            return true;
        }
        return false;
    }

    @Override
    public Optional<User> getUserByCardNumber(String cardNumber) {
        return userRepository.findByCardNumber(cardNumber);
    }

    @Override
    public Optional<User> getUserByshayyikliAccountNumber(Integer shayyikliAccountNumber) {
        return userRepository.findByshayyikliAccountNumber(shayyikliAccountNumber);
    }

}
