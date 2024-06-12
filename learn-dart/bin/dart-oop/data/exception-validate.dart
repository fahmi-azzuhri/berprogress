class ValidationException implements Exception {
  //buat class exception sendiri. tapi implements ke class Exception dari package dart:core
  String message;
  ValidationException(this.message);
}

class Validate {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username harus diisi");
    } else if (password == "") {
      throw ValidationException("Password harus diisi");
    } else if (username != "fahmi" || password != "fahmi") {
      throw ValidationException("Username atau Password salah");
    }
  }
}
