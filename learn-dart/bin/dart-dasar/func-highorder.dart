void sayHello(String name, String Function(String) filter) {
  var filteredName = filter(name);
  print("Halo $filteredName");
}

String filterBadWord(String name) {
  if (name != "goblok") {
    return name;
  } else {
    return "****";
  }
}

void main() {
  sayHello("Fahmi", filterBadWord);
  sayHello("goblok", filterBadWord);
}
