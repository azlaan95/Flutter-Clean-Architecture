class PasswordValidator {
  bool isTooShort(String password) {
    return password.trim().length < 7;
  }

  bool isNumberSequence(String password) {
    return _isSequenceOfNumbers(password.trim());
  }

  bool hasConsecutiveRepeatingChars(String password) {
    return _hasConsecutiveRepeatingCharacter(password.trim());
  }

  bool _isSequenceOfNumbers(String password) {
    var pattern = '0123456789012345789';
    var reversePattern = '98765432109876543210';
    return pattern.contains(password) || reversePattern.contains(password);
  }

  bool _hasConsecutiveRepeatingCharacter(String value) {
    return RegExp(r"((.)\2{2,})").hasMatch(value);
  }
}
