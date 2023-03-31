abstract class ValidationFacadeType {
  bool isEmailValid(String email);

  bool isPasswordTooShort(String password);

  bool isPasswordNumberSequence(String password);

  bool hasConsecutiveRepeatingCharsInPassword(String password);

  bool isNameValid(String name);

  bool isOtpValid(String otp);

  bool isMobileNumberValid(String mobile);

  bool isReferralCodeValid(String referralCode);
}
