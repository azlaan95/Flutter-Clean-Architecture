class EmailValidator {
  bool isValid(String email) {
    return _isValid(email.trim());
  }

  bool _isValid(String email) {
    if (email.isEmpty) return false;

    List<String> parts = email.split("@");
    if (parts.length != 2) return false;
    if (_hasMultipleDots(parts[1])) return false;

    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  bool _hasMultipleDots(String email) {
    int firstIndex = email.indexOf(".");
    int lastIndex = email.lastIndexOf(".");
    return firstIndex != lastIndex;
  }
}
