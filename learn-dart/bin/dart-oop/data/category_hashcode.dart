class Category {
  int id;
  String name;
  Category(this.id, this.name);

  bool operator ==(Object other) {
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

  int get hashCode => id.hashCode ^ name.hashCode;
}
