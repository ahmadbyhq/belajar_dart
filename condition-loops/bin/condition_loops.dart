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
      case 4:
        nomor4();
        break;
      case 5:
        nomor5();
        break;
      case 6:
        nomor6();
        break;
      case 7:
        nomor7();
        break;
      case 8:
        nomor8();
        break;
      case 9:
        nomor9();
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

void nomor4() {
  print('Tuliskan nama lengkap Anda: ');
  String name = stdin.readLineSync()!;

  for (int i = 1; i <= 100; i++) {
    print('$i. $name');
  }
}

void nomor5() {
  print('Masukkan jumlah deret yang ingin dihitung untuk bilangan asli: ');
  String? inputRaw = stdin.readLineSync();
  int? input = int.tryParse(inputRaw ?? '');
  int sumAngka = 0;

  if (input != null && input > 0) {
    for (int i = 1; i <= input; i++) {
      sumAngka += i;
      print('deret ke $i = $sumAngka');
    }
    print('Hasil dari $input deret bilangan asli adalah $sumAngka');
  } else {
    print('Mohon untuk memasukkan angka positif yang valid!');
  }
}

void nomor6() {
  print(
    'Masukkan jumlah baris yang ingin ditampilkan hasil perkalian kelipatan 5: ',
  );
  String? inputRaw = stdin.readLineSync();
  int? input = int.tryParse(inputRaw ?? '');

  int konstanta = 5;

  if (input != null && input > 0) {
    for (int i = 1; i <= input; i++) {
      int multiply = konstanta * i;
      print('$konstanta x $i = $multiply');
    }
  } else {
    print('Mohon masukkan jumlah baris yang valid');
  }
}

void nomor7() {
  int nomor = 9;
  for (int i = 1; i <= nomor; i++) {
    print('--- Tabel Perkalian $i ---');
    for (int j = 1; j <= nomor; j++) {
      int multiply = i * j;
      print('$i x $j = $multiply');
    }
    print('');
  }
}

void nomor8() {
  print('--- Kalkulator Sederhana ---');

  print('Silahkan pilih operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  print('Masukkan angka pertama: ');
  double? angkaPertama = double.tryParse(stdin.readLineSync() ?? '');

  print('Masukkan angka kedua: ');
  double? angkaKedua = double.tryParse(stdin.readLineSync() ?? '');

  double hasil;

  if (angkaPertama != null && angkaKedua != null) {
    switch (operator) {
      case '+':
        hasil = angkaPertama + angkaKedua;
        print('$angkaPertama + $angkaKedua = $hasil');
        break;
      case '-':
        hasil = angkaPertama - angkaKedua;
        print('$angkaPertama - $angkaKedua = $hasil');
        break;
      case '*':
        hasil = angkaPertama * angkaKedua;
        print('$angkaPertama x $angkaKedua = $hasil');
        break;
      case '/':
        if (angkaKedua == 0) {
          print('Tidak bisa membagi dengan angka 0');
        } else {
          hasil = angkaPertama / angkaKedua;
          print('$angkaPertama / $angkaKedua = $hasil');
        }
        break;
      default:
        print('Operator tidak valid');
    }
  } else {
    print('Harap masukkan angka yang valid');
  }
}

void nomor9() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41 || i == 98) continue;
    print('Angka ke-$i');
  }
}
