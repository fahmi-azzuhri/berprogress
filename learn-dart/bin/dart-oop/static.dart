class Player {
  static final name = "Fahmi";
  static final country = "Indonesia";
}

class Math {
  static int sum(int first, int second) {
    return first + second;
  }
}

void main() {
  print(Player.name); //manggil nya nama class langsung ke field nya
  print(Player.country);
  print(Math.sum(9, 9));
}
