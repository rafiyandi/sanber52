void main() async {
  var eAsync = ExampleAsync();

  eAsync.getDataBanner();
  print('Guest 1');
  eAsync.getDataProduk();
  // await eAsync.getDataUser();
  print('Guest 2');
  print('Guest ${eAsync.name}');
}

class ExampleAsync {
  String name = 'Default Name';
  Future<void> getDataProduk() async {
    // print('Membutuhkan waktu 3 detik');
    // print('Get Data Produk Sukses');
    return Future.delayed(Duration(seconds: 3), () {
      print('Get Data produk sukses');
    });
  }

  Future<void> getDataBanner() async {
    // print('Membutuhkan waktu 6 detik');
    return Future.delayed(Duration(seconds: 6), () {
      print('Get Data Banner sukses');
    });
  }

  Future<String> getDataUser() async {
    return Future.delayed(Duration(seconds: 8), () {
      name = 'Rafiyandi';
      print('Get Data user [DONE]');
      return name;
    });
  }
}
