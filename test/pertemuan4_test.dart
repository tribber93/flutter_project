// materi pertemuan 4
void main() {
  print("---------- Pertemuan 4 ----------");
  // final keyword (imutable)
  // yang terdiri dari 'const' dan 'final'
  //const
  print('**final keyword (imutable)**');
  print('#const');
  const namaConst = 'Yoni Tribber';
  print(namaConst +
      ' <- harus langsung diisi dengan nilai ketika dideklarasikan');

  //final
  print('#final');
  final String mahasiswaFinal;
  mahasiswaFinal = 'Yoni Tribber';

  print(mahasiswaFinal);

  //null safety
  print('**null safety**');
  // ? ! late
  // ? digunakan untuk mengecek nilai null atau tidak
  String? jurusan;
  // late digunakan untuk nanti seperti final namun nilai bisa diubah
  // late String jurusan = "TI";

  jurusan = 'Teknik Informatika';
  // ! memastikan nilai sudah diisi
  print(jurusan!.length);

  //perulangan / looping
  print('**perulangan**');
  // for
  print('#for ++');
  for (var i = 1; i <= 5; i++) {
    print('Nilai i = ' + i.toString());
  }
  print('#for --');
  for (var i = 5; i >= 1; i--) {
    print('Nilai i = ' + i.toString());
  }

  // while
  print('#while');
  int no1 = 1;
  int no2 = 5;

  while (no1 <= no2) {
    print(no1);
    no1++;
  }

  // DO WHILE
  int no3 = 1;
  int no4 = 5;
  print('#Do While');
  do {
    print(no3);
    no3++;
  } while (no3 <= no4);

  print('------ OOP Dart Class ------');
  var k1 = Kendaraan(merk: 'BMW', nama: 'Civic', kecepatan: 40);
  k1.merk = 'Honda';
  print(k1.merk);
  print(k1.nama);
  print(k1.kecepatan);

  var k2 = Kendaraan(merk: 'Mitsubishi', nama: 'Colt', kecepatan: 50);
  k2.maju(20);

  print(k2.merk);
  print(k2.nama);
  print(k2.kecepatan);

  print('------ OOP Dart Class (Inheritance) ------');
  //dari pewarisan
  var s1 = Sedan(
      jumlahPintu: 4, kecepatanMaksimal: 140, merk: 'Nissan', nama: 'Almera');

  print('''
Ini adalah mobil ${s1.nama}
Merknya adalah ${s1.merk}
yang memiliki jumlah pintu ${s1.jumlahPintu}
dan memiliki Kecepatan maksimal ${s1.kecepatanMaksimal} km/jam
''');
}

// oop
// class
class Kendaraan {
  String? merk;
  String? nama;
  int? kecepatan;

  //construktotr
  Kendaraan({this.merk, this.nama, this.kecepatan});

  //method
  maju(int tambahKecepatan) {
    kecepatan = kecepatan! + tambahKecepatan;
    print('Kecepatan sekarang ' + kecepatan.toString());
  }
}

//inheritance / pewarisan
class Sedan extends Kendaraan {
  int? jumlahPintu;
  int? kecepatanMaksimal;

  Sedan({String? merk, String? nama, this.jumlahPintu, this.kecepatanMaksimal})
      : super(merk: merk, nama: nama);
}
