void main() {
  var listString = <String>["Fahmi", "Azzuhri", "Efki", "Siti", "Amelia"];

  print(listString);
  listString.add("Tasya");
  print(listString);
  print(listString[2]);
  listString[2] = "Rafli";
  print(listString);
  listString.removeAt(2);
}
