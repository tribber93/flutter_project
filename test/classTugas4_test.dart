void main() {
  var apel = Apel(
      nama: 'Apel',
      warna: 'Merah',
      rasa: 'Manis',
      harga: 5000,
      jenis: 'Apel Merah',
      stok: 40);
  var jeruk = Jeruk(
      nama: 'Jeruk',
      warna: 'Hijau',
      rasa: 'Asam',
      harga: 3000,
      jenis: 'Jeruk Nipis',
      stok: 100);

  apel.keterangan();
  jeruk.keterangan();
  print('=============================');
  apel.cekStok();
  apel.tambahStok(10);
  apel.cekStok();
  apel.beli(4);
  apel.cekStok();
  print('=============================');
  jeruk.cekStok();
  jeruk.tambahStok(23);
  jeruk.cekStok();
  jeruk.beli(15);
  jeruk.cekStok();
  print('=============================');

  var kucing = Kucing(nama: 'Aether', jenis: 'Anggora', warnaBulu: 'Oren');
  kucing.keterangan();

  var anjing = Anjing(nama: 'Lumine', jenis: 'Labrador', warnaBulu: 'Coklat');
  anjing.keterangan();
}

// class buah sebagai parent class
class Buah {
  String? nama;
  String? warna;
  int? harga;
  int? stok;

  Buah({
    this.nama,
    this.warna,
    this.harga,
    this.stok,
  });

  //method untuk menambah stok buah
  tambahStok(int tambahanStok) {
    stok = stok! + tambahanStok;
    print('stok $nama bertambah sebanyak $tambahanStok');
    return stok;
  }

  //method untuk menghitung total pembelian buah
  beli(int jumlah) {
    int totalBeli = jumlah * harga!;
    print('kamu membeli $jumlah $nama dengan harga total : Rp. ' +
        totalBeli.toString());
    return stok = stok! - jumlah;
  }

  //method untuk mengecek stok buah
  void cekStok() {
    print('sisa stok $nama : ' + stok.toString());
  }
}

//apel yang merupakan child class dari buah
class Apel extends Buah {
  String? jenis;
  String? rasa;

  Apel({
    this.jenis,
    this.rasa,
    String? nama,
    String? warna,
    int? harga,
    int? stok,
  }) : super(nama: nama, warna: warna, harga: harga, stok: stok);

  //method untuk menampilkan keterangan
  void keterangan() {
    print('---------- class Apel ----------');
    print('----- child class dari Buah -----');
    print('''
    Nama           : $nama
    Jenis          : $jenis
    Warna          : $warna
    Rasa           : $rasa
    Harga          : Rp. $harga /buah
    Stok           : $stok
    ''');
  }
}

//jeurk yang merupakan child class dari buah
class Jeruk extends Buah {
  String? jenis;
  String? rasa;

  Jeruk({
    this.jenis,
    this.rasa,
    String? nama,
    String? warna,
    int? harga,
    int? stok,
  }) : super(nama: nama, warna: warna, harga: harga, stok: stok);

  //method untuk menampilkan keterangan
  void keterangan() {
    print('---------- class Jeruk ----------');
    print('----- child class dari Buah -----');
    print('''
    Nama           : $nama
    Jenis          : $jenis
    Warna          : $warna
    Rasa           : $rasa
    Harga          : Rp. $harga /buah
    Stok           : $stok
    ''');
  }
}

//class Hewan sebagai parent class
class Hewan {
  String? nama;
  String? warnaBulu;

  Hewan({
    this.nama,
    this.warnaBulu,
  });
}

//Kucing yang merupakan child class dari Hewan
class Kucing extends Hewan {
  String? jenis;

  Kucing({
    String? nama,
    String? warnaBulu,
    this.jenis,
  }) : super(nama: nama, warnaBulu: warnaBulu);

  suaraKucing() {
    return 'Meong meong';
  }

  keterangan() {
    print('---------- class Kucing ----------');
    print('----- child class dari Hewan -----');
    print('''
    Nama           : $nama
    Jenis          : $jenis
    Warna Bulu     : $warnaBulu
    memiliki suara : ${suaraKucing()}
    ''');
  }
}

//Anjing yang merupakan child class dari Hewan
class Anjing extends Hewan {
  String? jenis;

  Anjing({
    String? nama,
    String? warnaBulu,
    this.jenis,
  }) : super(nama: nama, warnaBulu: warnaBulu);

  suaraAnjing() {
    return 'Guk guk guk';
  }

  keterangan() {
    print('---------- class Anjing ----------');
    print('----- child class dari Hewan -----');
    print('''
    Nama           : $nama
    Jenis          : $jenis
    Warna Bulu     : $warnaBulu
    memiliki suara : ${suaraAnjing()}
    ''');
  }
}
