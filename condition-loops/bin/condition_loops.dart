import 'dart:io';

void main() {
  bool loop = true;
  while (loop) {
    print('Silahkan pilih menu yang Anda inginkan: ');
    int opsi = int.parse(stdin.readLineSync()!);

    switch (opsi) {
      case 1:
        nomor1();
        break;
      case 2:
        nomor2();
        break;
      case 3:
        nomor3();
        break;
      case 10:
        print('Keluar dari program.');
        loop = false;
        break;
      default:
        print('Pilihan tidak valid.');
    }

    if (loop) {
      print('Tekan enter untuk kembali ke menu utama');
      stdin.readLineSync();
      Process.runSync('cls', [], runInShell: true);
    }
  }
}

void nomor1() {
  print('Masukkan Angka yang Anda Pilih: ');
  int angka = int.parse(stdin.readLineSync()!);
  var hasilInput = (angka % 2 == 0)
      ? 'Angka $angka adalah bilangan genap'
      : 'Angka $angka adalah bilangan ganjil';
  print(hasilInput);
}

void nomor2() {
  print('Masukkan huruf yang ingin Anda check: ');
  String input = stdin.readLineSync()!.toLowerCase();
  String hurufVocal = 'aiueo';
  bool isVocal = false;
  if (input.length != 1) {
    print('Masukkan hanya satu karakter');
  } else {
    for (int i = 0; i < hurufVocal.length; i++) {
      if (input == hurufVocal[i]) {
        isVocal = true;
        break;
      }
    }

    if (isVocal) {
      print('Huruf $input adalah huruf vocal');
    } else {
      print('Huruf $input adalah huruf konsonan');
    }
  }
}

void nomor3() {
  print('Masukkan Angka yang ingin dicek: ');
  int inputAngka = int.parse(stdin.readLineSync()!);
  print(
    inputAngka > 0
        ? '$inputAngka adalah bilangan positif.'
        : inputAngka < 0
        ? '$inputAngka adalah bilangan negatif.'
        : '$inputAngka adalah nol.',
  );
}
