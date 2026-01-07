import 'dart:io';

void main() {
  bool loop = true;

  while (loop) {
    print('Silahkan pilih soal');
    print('''
1. Print nama menggunakan Dart
2. Print Hello I am "John Doe" dan Hello I'am "John Doe"
3. Deklarasi konstanta int dengan nilai 7
4. Menghitung simple interest
5. Menghitung kuadrat suatu bilangan (input user)
6. Menggabungkan nama depan dan nama belakang (input user)
7. Menghitung hasil bagi dan sisa bagi dua bilangan
8. Menukar (swap) dua bilangan
9. Menghapus semua spasi dari String
10. Mengubah String menjadi int
11. Menghitung pembagian tagihan restoran
12. Menghitung waktu tempuh ke kantor
13. Keluar
Masukkan pilihan Anda: ''');
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
        nomor10();
        break;

      case 11:
        nomor11();
        break;

      case 12:
        nomor12();
        break;

      case 13:
        print('Keluar dari aplikasi');
        loop = false;
        break;

      default:
        print('Pilihan tidak valid');
    }

    if (loop) {
      print('Tekan enter untuk kembali ke menu utama');
      stdin.readLineSync();
      Process.runSync('cls', [], runInShell: true);
    }
  }
}

void nomor1() {
  print('Masukkan Nama Anda: ');
  String? nama = stdin.readLineSync()!;
  print('Nama Anda adalah $nama');
}

void nomor2() {
  print('Hello I am \"John Doe\".');
  print('Hello I\'am \"John Doe\"');
}

void nomor3() {
  const angka = 7;
  print('Variabel angka konstan adalah $angka');
}

void nomor4() {
  print('Masukkan nilai pokok: ');
  int p = int.parse(stdin.readLineSync()!);
  print('Masukkan waktu: ');
  int t = int.parse(stdin.readLineSync()!);
  print('Masukkan suku bunga : ');
  int r = int.parse(stdin.readLineSync()!);

  print('Hasil dari perhitungan bunga Anda adalah ${(p * r * t) / 100}');
}

void nomor5() {
  print('Masukkan bilangan yang ingin dikuadratkan: ');
  int angka = int.parse(stdin.readLineSync()!);
  print('Hasil kuadrat bilangan Anda: ${angka * angka}');
}

void nomor6() {
  print('Masukkan Nama Awal Anda: ');
  String namaAwal = stdin.readLineSync()!;
  print('Masukkan Nama Belakang Anda: ');
  String namaBelakang = stdin.readLineSync()!;

  print('Nama Lengkap Anda: $namaAwal $namaBelakang');
}

void nomor7() {
  print('Masukkan Angka yang ingin dibagi: ');
  int angka = int.parse(stdin.readLineSync()!);

  print('Masukkan angka yang menjadi pembagi: ');
  int pembagi = int.parse(stdin.readLineSync()!);

  print('Hasil bagi(dibulatkan) dari $angka ~/ $pembagi = ${angka ~/ pembagi}');
  print('Sisa bagi dari $angka / $pembagi = ${angka % pembagi}');
}

void nomor8() {
  print('Masukkan angka pertama: ');
  int angkaPertama = int.parse(stdin.readLineSync()!);
  print('Masukkan angka kedua: ');
  int angkaKedua = int.parse(stdin.readLineSync()!);

  int temp = angkaKedua;
  angkaKedua = angkaPertama;
  angkaPertama = temp;

  print('Hasil dari swap angka: ');
  print('angka pertama = $angkaPertama\nangka kedua = $angkaKedua');
}

void nomor9() {
  print('Masukkan kalimat yang ingin dihapus spasinya: ');
  String kalimat = stdin.readLineSync()!;
  print('Kalimat asli: $kalimat');
  print('Hasil penghapusan spasi: ${kalimat.replaceAll(' ', '')}');
}

void nomor10() {
  print('Masukkan Angka: ');
  String angka = stdin.readLineSync()!;
  int angkaKonversi = int.parse(angka);
  print('Tipe data awal: ${angka.runtimeType}');
  print('Tipe data hasil konversi: ${angkaKonversi.runtimeType}');
}

void nomor11() {
  print('Masukkan total tagihan: ');
  double tagihan = double.parse(stdin.readLineSync()!);
  print('Masukkan jumlah orang');
  int jumlahOrang = int.parse(stdin.readLineSync()!);

  print(
    'Hasil dari split bill untuk $jumlahOrang orang adalah ${tagihan / jumlahOrang}',
  );
}

void nomor12() {
  // s = v * t

  int jarak = 25;
  int kecepatan = 40;
  double waktu = jarak / kecepatan;

  print(
    'Hasil waktu jarak dari rumah ke kantor dengan kecepatan: $kecepatan dan jarak: $jarak adalah ${waktu * 60} menit',
  );
}
