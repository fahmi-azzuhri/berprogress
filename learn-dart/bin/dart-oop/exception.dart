import 'data/exception-validate.dart';

void main() {
  // try {
  //   Validate.validate("", "");
  // } on ValidationException {
  //   print("Validasi gagal");
  // }

  try {
    Validate.validate("fahmi", "j");
  } on ValidationException catch (exception) {
    //karena on menggunakan custom exception jadi bisa menggunakan .message
    //menangkap objeck exception. di dalam parameter nama nya bebas
    print("Error : ${exception.message}");
  } catch (exception) {
    print("Error : ${exception.toString()}");
    //kalo menggunakan Exception tidak bisa menggunakan message,jadi pake toString
  }
}
