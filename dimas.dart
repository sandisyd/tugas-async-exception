void main() async {
  print("pembeli memanggil pelayan");
  print("pelayan menghampiri pembeli");
  try {
    await order("bakso");
    print("pembeli makan ");
  } catch(e) {
    print(e);
  }
  
  
  print ("\n---------------------------\n");
  
  
  print("pembeli memanggil pelayan");
  print("pelayan menghampiri pembeli");
  try {
    await order("spageti");
    print("pembeli makan ");
  } catch(e) {
    print(e);
  }

}


Future<void> order(String pesanan) async {
  List<String> menu = ["bakso", "mie ayam", "soto"];
  print("\npesanan telah dicatat, anda memesan $pesanan");
  print("pelayan kembali ke dapur\n");
  if (menu.contains(pesanan)) {
    return Future.delayed(
      Duration(seconds: 3), () {
        print("\n$pesanan telah selesai dibuat");
        print("pelayan mengantarkan pesanan ke pembeli");
        print("selamat menikmati\n");
      }
    );
  } else {
    throw ("maaf, yang anda pesan tidak ada di dalam menu");
  }
}


