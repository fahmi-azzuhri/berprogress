void main() {
  var upperFunction = (String name) {
    return name.toUpperCase();
  };

  var lowerFunction = (String name) => name.toLowerCase();

  var result1 = upperFunction("fahmi");
  var result2 = lowerFunction("FAHMI");

  print('Halo $result1');
  print(result2);
}

//Function kosong dimasukkan kedalam variabel