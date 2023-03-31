class ReferralCodeValidator {
  bool isValid(String referralCode) => _isValid(referralCode.trim());

  bool _isValid(String value) {
    if (value.isEmpty) return true;
    if (value.length < 6) return false;
    return true;
  }
}
