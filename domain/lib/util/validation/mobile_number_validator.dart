class MobileNumberValidator {
  bool isValid(String mobileNo) => _isValid(mobileNo.trim());

  bool _isValid(String value) {
    if (value.isEmpty) return false;
    if (!RegExp(r"(^\+\d{8,16}$)|(^\d{8,16}$)").hasMatch(value)) {
      return false;
    }
    return true;
  }
}
