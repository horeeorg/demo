import 'dart:io';

int Luas(int panjang, int lebar) {
  return panjang * lebar;
}

void main() {
  print('Masukkan Panjang');
  int panjang = int.parse(stdin.readLineSync());
  print('Masukkan Lebar');
  int lebar = int.parse(stdin.readLineSync());

  int luas = Luas(panjang, lebar);
  print('Luas = ${luas}');
}

