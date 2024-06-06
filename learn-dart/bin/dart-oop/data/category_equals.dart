class Category {
  int id;
  String name;
  Category(this.id, this.name);

  bool operator ==(Object other) {
    // operator == digunakan untuk mengecek apakah kedua object sama atau tidak. harus menggunakan type data Object
    if (other is Category) {
      if (id != other.id || name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}
