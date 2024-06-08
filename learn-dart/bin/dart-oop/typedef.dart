class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  int call() {
    return first + second;
  }
}

typedef Total = Sum; //ubah class sum menjadi total

void main() {
  Total total = Total(9, 33);
  print(total());
}
