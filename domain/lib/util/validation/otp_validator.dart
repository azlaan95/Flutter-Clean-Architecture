class OtpValidator {
  bool isValid(String otp) {
    return _isValid(otp.trim());
  }

  bool _isValid(String value) {
    if (value.isEmpty) return false;
    if (value.length < 4) return false;
    return true;
  }
}
