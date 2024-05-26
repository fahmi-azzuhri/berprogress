class Immutable {
  final String firstName; //harus menggunakan final
  final String lastName;

  const Immutable(this.firstName, this.lastName);
}

void main() {
  var nameImmutable = const Immutable("Fahmi",
      "Azzuhri"); //di dalam variabel masukkan nama constructor disertai dengan const
}
