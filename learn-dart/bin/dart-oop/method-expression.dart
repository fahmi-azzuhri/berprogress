class Language {
  void javaScript() => print("ini bahasa pemrograman js");
  void dart() => print("ini bahasa pemrograman dart");
  String kotlin() => "ini bahasa pemrograman kotlin";
}

void main() {
  var language = Language();
  language.javaScript();
  print(language.kotlin());
}
