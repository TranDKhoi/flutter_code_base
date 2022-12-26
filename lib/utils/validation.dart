class Validation {
  static String? validEmail(String text) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (text.isEmpty) {
      return 'Email không được rỗng';
    } else if (!regex.hasMatch(text)) {
      return 'Email không đúng định dạng';
    } else {
      return null;
    }
  }
}
