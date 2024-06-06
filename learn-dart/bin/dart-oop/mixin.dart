abstract class Multimedia {}

mixin Playable on Multimedia {
  //untuk membatasi dari class mana yang boleh diakses gunakan on lalu dilanjutkan nama classn yang ingin diakses
  String? name;
  void play() {
    print("Play ${this.name}");
  }
}

mixin Stoppable on Multimedia {
  String? name;
  void stop() {
    print("Stop ${this.name}");
  }
}

class Video extends Multimedia
    with Playable, Stoppable {} //gunakan extends agar mixin boleh diakses

class Audio extends Multimedia with Playable, Stoppable {}

void main() {
  Video video = Video();
  video.name = "Belajar Dart OOP";
  print(video.name);
  video.play();
  video.stop();
}
