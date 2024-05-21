void main() {
  var nilaiAbsen = 80;
  var nilaiTugas = 90;

  var nilaiAkhirAbsen = nilaiAbsen >= 75;
  var nilaiAkhirTugas = nilaiTugas >= 75;

  print(nilaiAkhirAbsen);
  print(nilaiAkhirTugas);

  var nilaiKelulusan = nilaiAkhirTugas && nilaiAkhirAbsen;
  print(nilaiKelulusan);
}
