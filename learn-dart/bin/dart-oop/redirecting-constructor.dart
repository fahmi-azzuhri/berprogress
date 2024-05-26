class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;

  Person(this.name, this.address);
  Person.justName(String name)
      : this(name,
            ""); //di dalam named constructor yang ingin diubah apa beserta tipe datanya, kemudian tambahkan titik dua. lalu this dan masukkan apa yg ingin diubah beserta value yang sesuai dengan tipe data
  Person.justAddress(String address) : this("", address);
  Person.newAddress()
      : this.justAddress(
            "Tokyo"); //bisa juga langsung ke named constructor dengan menambahkan this dan isi dengan value yang baru
}

void main() {
  var person = Person("Amel", "Bekasi");
  print(person.name);
  print(person.address);

  var personJustName = Person.justName("Efki");
  print(personJustName.name);
  print(personJustName.address); //null

  var personJustAddress = Person.justAddress("Jakarta");
  print(personJustAddress.name);
  print(personJustAddress.address);

  var personNewAddress = Person
      .newAddress(); //tidak perlu diisi value lagi karena value sudah diubah diatas
  print(personNewAddress.name);
  print(personNewAddress.address);
}
