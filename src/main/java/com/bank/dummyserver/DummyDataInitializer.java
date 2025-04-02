// //to generate dummy users
// package com.bank.dummyserver;

// import java.math.BigDecimal;
// import java.math.RoundingMode;
// import java.util.List;
// import java.util.Random;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.CommandLineRunner;
// import org.springframework.stereotype.Component;

// import com.bank.dummyserver.model.User;
// import com.bank.dummyserver.repository.UserRepository;

// @Component
// public class DummyDataInitializer implements CommandLineRunner {

// @Autowired
// private UserRepository userRepository;

// private final List<String> firstNames = List.of(
// "Mohammed", "Azhar", "Ali", "Nahla", "Ibrahim",
// "Khaled", "Omar", "Sawsan", "Majed", "Amera"
// );

// private final List<String> familyNames = List.of(
// "Al-Asadi", "Al-Hashimi", "Al-Kilani", "Al-Sharif", "Al-Tamimi",
// "Al-Baghdadi", "Al-Quraishi", "Al-Faruqi", "Al-Sufi", "Al-Numeiri"
// );

// @Override
// public void run(String... args) throws Exception {
// for (int i = 0; i < 100; i++) {
// try {
// createUser(
// getRandomFirstName(),
// getRandomFamilyName(),
// generateIdNumber(),
// generateCardNumber(),
// generateExpiryDate(),
// generateSecurityCode(),
// generateBalance()
// );
// } catch (Exception e) {
// System.err.println("Error creating user: " + e.getMessage());
// }
// }
// }

// void createUser(String firstName, String familyName, String idNumber, String
// cardNumber, String expiryDate, String securityCode, BigDecimal balance) {
// if
// (!userRepository.existsByIdNumberAndCardNumberAndExpiryDateAndSecurityCode(idNumber,
// cardNumber, expiryDate, securityCode)) {
// User user = new User(firstName, familyName, idNumber, cardNumber, expiryDate,
// securityCode, balance);

// userRepository.save(user);
// // System.out.println("User " + firstName + " " + familyName + " created with
// // balance: " + balance);
// } else {
// System.out.println("User with ID " + idNumber + " already exists.");
// }
// }

// private String getRandomFirstName() {
// Random random = new Random();
// return firstNames.get(random.nextInt(firstNames.size()));
// }

// private String getRandomFamilyName() {
// Random random = new Random();
// return familyNames.get(random.nextInt(familyNames.size()));
// }

// private String generateCardNumber() {
// Random random = new Random();
// StringBuilder cardNumber = new StringBuilder();
// for (int i = 0; i < 16; i++) {
// cardNumber.append(random.nextInt(10));
// }
// return cardNumber.toString();
// }

// private String generateExpiryDate() {
// Random random = new Random();
// int month = random.nextInt(12) + 1; // Generates a random month between 1 and
// //12
// int year = random.nextInt(6) + 25; // Generates a random year between 25
// //(2025) and 30 (2030)
// return String.format("%02d/%02d", month, year);
// }

// private String generateSecurityCode() {
// Random random = new Random();
// return String.format("%03d", random.nextInt(1000));
// }

// private BigDecimal generateBalance() {
// Random random = new Random();
// double randomBalance = 1000.0 + (50000.0 - 1000.0) * random.nextDouble();
// return BigDecimal.valueOf(randomBalance).setScale(2, RoundingMode.HALF_UP);
// }

// private String generateIdNumber() {
// Random random = new Random();
// StringBuilder idNumber = new StringBuilder();
// for (int i = 0; i < 9; i++) { // Loop to generate 9 digits
// idNumber.append(random.nextInt(10)); // Append a random digit (0-9) to the ID
// }
// return idNumber.toString();
// }
// }