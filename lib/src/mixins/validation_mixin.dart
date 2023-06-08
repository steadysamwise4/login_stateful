class ValidationMixin {
  String? validateEmail(value) {
    return (value != null && value.contains('@'))
        ? null
        : 'Value must be a proper email';
  }

  String? validatePassword(value) {
    return (value != null && value.length > 7)
        ? null
        : 'Password must be 8 characters long';
  }
}
