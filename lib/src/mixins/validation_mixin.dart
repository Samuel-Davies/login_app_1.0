
class ValidationMixin {

  String? validatePassword(value) {
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }




  String? validateEmail(value) {
        // return null if valid
        // otherwise string (with the error messsage) if invalid
        if (!value!.contains('@')) {
          return 'Please enter a valid email';
        }
        return null;
      }
}
