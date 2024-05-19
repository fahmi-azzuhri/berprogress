void main() {
  var total = sum([11, 11, 11, 11, 11]);
  print(total);
}

int sum(List<int> numbers) {
  var total = 0;

  for (var number in numbers) {
    total += number;
  }

  return total;
}
