package com.bank.dummyserver.Controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bank.dummyserver.Service.UserService;
import com.bank.dummyserver.dtos.UserBalanceResponseDTO;
import com.bank.dummyserver.dtos.UserSummaryDTO;
import com.bank.dummyserver.dtos.UserVerificationDTO;
import com.bank.dummyserver.model.User;
import com.bank.dummyserver.repository.UserRepository;

@RestController
@RequestMapping("/api/users")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private UserRepository userRepository;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/verify")
    public ResponseEntity<?> verifyUser(@RequestBody UserVerificationDTO userVerificationDTO) {
        User user = userService.getUserIfVerified(userVerificationDTO);

        if (user != null) {
            UserBalanceResponseDTO responseDTO = new UserBalanceResponseDTO(user.getFirstName(), user.getFamilyName(),
                    user.getBalance());
            return ResponseEntity.ok(responseDTO);
        } else {
            return ResponseEntity.status(404).body("User not found or verification failed.");
        }
    }

    @GetMapping("/summaries")
    public List<UserSummaryDTO> getAllUserSummaries() {
        return userService.getAllUserSummaries();
    }

    @PostMapping("/update-shayyikli")
    public ResponseEntity<?> updateShayyikliAccountNumber(@RequestParam String cardNumber,
            @RequestParam Integer shayyikliAccountNumber) {
        boolean updated = userService.updateShayyikliAccountNumber(cardNumber, shayyikliAccountNumber);

        if (updated) {
            return ResponseEntity.ok("Shayyikli account number updated successfully.");
        } else {
            return ResponseEntity.status(404).body("User with the given card number not found.");
        }
    }

    @GetMapping("/balance")
    public ResponseEntity<?> getBalanceByCardNumber(@RequestParam String cardNumber) {
        Optional<User> userOptional = userService.getUserByCardNumber(cardNumber);
        if (userOptional.isPresent()) {
            User user = userOptional.get();
            return ResponseEntity.ok(user.getBalance());
        } else {
            return ResponseEntity.status(404).body("User with card number " + cardNumber + " not found.");
        }
    }

    @PostMapping("/update_balance")
    public ResponseEntity<?> UpdateBalanceByshayyikliAccountNumber(@RequestParam Integer shayyikliAccountNumber,
            @RequestParam BigDecimal balance) {
        Optional<User> userOptional = userService.getUserByshayyikliAccountNumber(shayyikliAccountNumber);
        if (userOptional.isPresent()) {
            User user = userOptional.get();
            user.setBalance(balance);
            userRepository.save(user);
            return ResponseEntity.ok("Balance updated successfully.");
        } else {
            return ResponseEntity.status(404)
                    .body("User with shayyikliAccountNumber " + shayyikliAccountNumber + " not found.");
        }
    }
}
