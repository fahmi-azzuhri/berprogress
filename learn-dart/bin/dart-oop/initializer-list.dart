class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  // Customer(this.fullName)
  //     : firstName = fullName.split(" ")[0],
  //       lastName = fullName.split(" ")[1] {
  //   print("New Customer");
  // }

  Customer(this.fullName) {
    //jika ingin mencetak apabila hanya 1 suku kata
    var names = fullName.split(" ");
    if (names.length > 1) {
      firstName = names[0];
      lastName = names[1];
    } else {
      firstName = fullName;
      lastName = '';
    }
    print("New Customer");
  }
}

void main() {
  var customer = Customer("Fahmi");
  print(customer.fullName);
  print(customer.firstName);
  print(customer.lastName);
}
