void main() {
  var nilai1 = 90;
  var nilai2 = 80;

  if (nilai1 >= 80 && nilai2 >= 80) {
    print('nilai anda A!');
  } else if (nilai1 >= 70 && nilai2 >= 70) {
    print('nilai anda B!');
  } else if (nilai1 >= 60 && nilai2 >= 60) {
    print('nilai anda C!');
  } else if (nilai1 >= 50 && nilai2 >= 50) {
    print('nilai anda D!');
  } else {
    print('nilai anda E, tidak lulus!');
  }
}
