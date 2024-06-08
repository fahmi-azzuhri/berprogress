class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  int call() {
    return first + second;
  }
}

void main() {
  Sum sum = Sum(3, 6); //define variabel sum dengan new Sum diikutin parameter
  print(
      sum()); //panggil variabel sum diikuti dengan () untuk memanggil method call
}
