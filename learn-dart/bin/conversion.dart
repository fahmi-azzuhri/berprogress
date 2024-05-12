void main() {
  var inputString = "9000";

  var inputNumber = int.parse(inputString);
  var inputDouble = double.parse(inputString);

  print(inputNumber);
  print(inputDouble);

  var stringToInt = inputNumber.toString();
  var stringToDouble = inputDouble.toString();

  print(stringToInt);
  print(stringToDouble);

  var boolToString = true.toString();
  print(boolToString);
}
