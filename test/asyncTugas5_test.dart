void main() async {
  print('Mencari film...');
  try {
    var pencarian = await cariFilm('Doctor Strange');
    print(pencarian);
  } catch (e) {
    print(e);
  } finally {
    print('Selesai');
  }
}

listFilm() {
  var film = ['Avengers', 'Spider-Man', 'Batman', 'Iron Man', 'Doctor Strange'];
  return film;
}

Future cariFilm(judulFilm) {
  return Future.delayed(Duration(seconds: 4), () {
    List<String> film = listFilm();
    for (int i = 0; i < film.length; i++) {
      if (film[i] == judulFilm) {
        return 'Yeay! Film $judulFilm ditemukan';
      }
    }
    throw Exception('Film $judulFilm tidak ditemukan');
  });
}
