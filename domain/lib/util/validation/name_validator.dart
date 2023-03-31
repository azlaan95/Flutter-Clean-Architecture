class NameValidator {
  bool isValid(String name) {
    return _isValid(name.trim());
  }

  bool _isValid(String name) {
    if (name.isEmpty) return false;
    if (name.length < 3) return false;
    return true;
  }
}
