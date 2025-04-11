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
// "Khaled", "Omar", "Sawsan", "Majed", "Amira", "Sara", "Hanan", "Nadine",
// "Saja", "Raida", "Mahmoud",
// "Hasan", "Hussein", "Yasmin", "Rami", "Tamer", "Nabil", "Alaa", "Hadi",
// "Jamal", "Ala", "Hala", "Rana",
// "Dalia", "Nour", "Yara", "Lina", "Maya", "Ranya", "Hadiya", "Zainab",
// "Fatima", "Layla", "Amina", "Samira",
// "Nadia", "Hiba", "Dina", "Ranya", "Nisreen", "Rasha", "Sahar", "Laila",
// "Mariam", "Nouran", "Yasmeen",
// "Kamel", "Rashed", "Hisham", "Mohammad", "Omar", "Yasser", "Hassan",
// "Khaled", "Tamer", "Fadi", "Rami",
// "Samir", "Adel", "Nabil", "Alaa", "Hadi", "Jamal", "Suhail");

// private final List<String> familyNames = List.of(
// "Al-Asadi", "Al-Hashimi", "Al-Kilani", "Al-Sharif", "Al-Tamimi",
// "Al-Baghdadi", "Al-Quraishi", "Al-Faruqi", "Al-Sufi", "Al-Numeiri",
// "Al-Mansouri", "Al-Mahdi", "Al-Hakim",
// "Al-Jabari", "Al-Khouri", "Al-Sayed", "Al-Husseini", "Al-Mahmoudi",
// "Al-Sabahi",
// "Abuodeh", "Odeh", "Al-Khalidi", "Al-Hamadi", "Al-Qudsi", "Al-Sabahi",
// "Al-Mansour", "Al-Masri", "Allahaleeh", "Sulaiby");

// @Override
// public void run(String... args) throws Exception {
// for (int i = 0; i < 800; i++) {
// try {
// createUser(
// getRandomFirstName(),
// getRandomFamilyName(),
// generateIdNumber(),
// generateCardNumber(),
// generateExpiryDate(),
// generateSecurityCode(),
// generateBalance());
// } catch (Exception e) {
// System.err.println("Error creating user: " + e.getMessage());
// }
// }
// }

// void createUser(String firstName, String familyName, String idNumber,
// String cardNumber, String expiryDate, String securityCode,
// BigDecimal balance) {
// if
// (!userRepository.existsByIdNumberAndCardNumberAndExpiryDateAndSecurityCode(idNumber,
// cardNumber, expiryDate, securityCode)) {
// User user = new User(firstName, familyName, idNumber, cardNumber, expiryDate,
// securityCode, balance);
// userRepository.save(user);
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
// cardNumber.append(random.nextInt(9) + 1);
// for (int i = 1; i < 16; i++) {
// cardNumber.append(random.nextInt(10));
// }
// return cardNumber.toString();
// }

// private String generateExpiryDate() {
// Random random = new Random();
// int month = random.nextInt(12) + 1;
// int year = random.nextInt(4) + 27;
// return String.format("%02d/%02d", month, year);
// }

// private String generateSecurityCode() {
// Random random = new Random();
// int firstDigit = random.nextInt(9) + 1;
// int secondDigit = random.nextInt(10);
// int thirdDigit = random.nextInt(10);
// return "" + firstDigit + secondDigit + thirdDigit;
// }

// private BigDecimal generateBalance() {
// Random random = new Random();
// double randomBalance = 1000.0 + (50000.0 - 1000.0) * random.nextDouble();
// return BigDecimal.valueOf(randomBalance).setScale(2, RoundingMode.HALF_UP);
// }

// private String generateIdNumber() {
// Random random = new Random();
// StringBuilder idNumber = new StringBuilder();
// idNumber.append(random.nextInt(9) + 1);
// for (int i = 1; i < 9; i++) {
// idNumber.append(random.nextInt(10));
// }
// return idNumber.toString();
// }
// }
