void main() {
  var names = <String, String>{
    "key1": "Fahmi",
    "key2": "Azzuhri",
    "key3": "Efki",
  };

  names["key2"] = "Siti"; //change data map
  print(names);
  names.remove("key3"); //delete data map
  print(names);

  print(names["key1"]); //get data map
}
