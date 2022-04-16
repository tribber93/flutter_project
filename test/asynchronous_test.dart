void main() async {
  func1();

  // await func4(40).then(
  //   (value) {
  //     print(value);
  //     print("then");
  //   },
  // ).catchError((error) {
  //   print(error);
  //   print("catchError");
  // });

  try {
    var value = await func4(40);
    print(value);
    print("then");
  } catch (error) {
    print(error);
    print("catchError");
  }

  func2();
  func3();
}

func1() {
  print('function 1');
}

func2() {
  print('function 2');
}

func3() {
  print('function 3');
}

Future<String> func4(int nilai) {
  return Future.delayed(Duration(seconds: 2), () {
    //menunggu 2 detik
    if (nilai > 50) {
      return 'Lulus';
    } else {
      throw 'Error Tidak Lulus';
    }
  });
}
