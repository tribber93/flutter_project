// materi pertemuan 3
void main() {
  print("---------- Pertemuan 3 ----------");
  //tipe data dan variable
  print('=======Tipe Data dan Variable=======');

  //var
  print('**Variable var**');
  var mahasiswa = "Yoni Tribber";
  var umur = 20;
  print("Nama Saya " + mahasiswa + " Umur Saya " + umur.toString());
  print("---------------------");

  //string
  print('**Variable String**');
  String nama;
  nama = "Yoni Tribber";
  print('Hello guys ' + nama + ' disini');
  print("---------------------");

  //int
  print('**Variable Int**');
  int semester;
  semester = 4;
  print('Saya sedang berada disemester ' + semester.toString());
  print("---------------------");

  //double
  print('**Variable Double**');
  double ipk;
  ipk = 3.75;
  print('ipk saya ' + ipk.toString());
  print("---------------------");

  //boolean
  bool benar = true;
  bool salah = false;
  bool tidakBenar = !true;
  bool tidakSalah = !false;

  //list
  print('**Variable List**');
  List profil = [
    'Yoni Tribber',
    'Teknik Informatika',
    semester.toString(),
    ipk.toString()
  ];
  print(profil);
  print("---------------------");

  //map
  print('**Variable Map**');
  Map kelas = {
    'nama': mahasiswa,
    'kelas': 'Teknik Informatika IS',
    'semester': semester.toString(),
    'ipk': ipk.toString()
  };
  print(kelas); //print semua data
  print(kelas['nama']);
  print(kelas['kelas']); //cara mengakses map
  print("---------------------");

  //Operator
  print('**Operator**');
  int a, b;
  a = 9;
  b = 3;
  print("nilai a = " + a.toString() + " dan nilai b = " + b.toString());

  //operator aritmatika
  print('#aritmatika');
  print('Penjumlahan -> a + b = ' + (a + b).toString());
  print('Pengurangan -> a - b = ' + (a - b).toString());
  print('Perkalian   -> a * b = ' + (a * b).toString());
  print('Pembagian   -> a / b = ' + (a / b).toString());
  print('Hasil Bagi  -> a % b = ' + (a % b).toString());

  //operator perbandingan atau logika
  print("#logika");
  print('Sama dengan -> a == b = ' + (a == b).toString());
  print('Tidak sama  -> a != b = ' + (a != b).toString());
  print('Lebih dari  -> a > b = ' + (a > b).toString());
  print('Kurang dari -> a < b = ' + (a < b).toString());
  print('Lebih sama  -> a >= b = ' + (a >= b).toString());
  print('Kurang sama ->a <= b = ' + (a <= b).toString());

  //kondisi
  print("---------------------");
  print("**Conditional**");
  print('#if else if else');
  var nilai = 80;
  if (nilai >= 80) {
    print('Nilai kamu A');
  } else if (nilai < 80 && nilai >= 50) {
    print('Nilai kamu B');
  } else {
    print('Tidak Lulus');
  }

  print("|||||||||||||||||||||");
  nilai >= 80
      ? print('Nilai kamu A')
      : nilai < 80 && nilai >= 50
          ? print('Nilai kamu B')
          : print('Tidak Lulus');

  print("---------------------");

  //fungsi
  print('**function**');

  hitungNilai();
  hitungNilai1(75, 90);
  var x = hitungNilai1(85, 90);
  print(x);
  var y = hitungNilai2(mapel1: 80, mapel2: 85);
  print(y);
  var z = hitungNilai3(80, 90);
}

hitungNilai() {
  print("ini adalah fungsi hitungNilai()");
}

//Positional Arguments
hitungNilai1(mapel1, mapel2, [mapel3]) {
  var nilaiAkhir;
  if (mapel3 == null) {
    nilaiAkhir = (mapel1 + mapel2) / 2;
  } else {
    nilaiAkhir = (mapel1 + mapel2 + mapel3) / 3;
  }
  return nilaiAkhir;
}

//Named Arguments
hitungNilai2({mapel1, mapel2}) {
  var nilaiAkhir;
  if (mapel2 != null) {
    nilaiAkhir = (mapel1 + mapel2) / 2;
  } else {
    nilaiAkhir = mapel1;
  }
  return nilaiAkhir;
}

//void
void hitungNilai3(mapel1, mapel2) {
  var nilaiAkhir = (mapel1 + mapel2) / 2;
  print(nilaiAkhir);
}
