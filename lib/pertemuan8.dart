import 'package:flutter/material.dart';
import 'package:flutter_pbm1/home.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Pertemuan8 extends StatelessWidget {
  const Pertemuan8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 8'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Selamat Datang",
                    toastLength: Toast.LENGTH_LONG,
                    timeInSecForIosWeb: 3,
                    webPosition: "center",
                    webBgColor: "liner-gradient(to right, #808080, #32CD32)",
                  );
                },
                child: const Text('Contoh Flutter Toast')),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  var sB = SnackBar(
                    content: const Text('Hallo, disini snackbar'),
                    backgroundColor: Colors.purple, // Warna latar belakang ungu
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(20)), // Bentuk elips
                    ),
                    margin: const EdgeInsets.all(5), // Margin
                    behavior: SnackBarBehavior
                        .floating, // Posisi Snackbar menjadi melayang
                    padding: const EdgeInsets.all(5), // Padding
                    action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.yellow, // Warna teks pada aksi
                      onPressed: () {
                        // Logika untuk aksi Snackbar
                        const Text('Aksi Snackbar ditekan!');
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(sB);
                },
                child: const Text('Contoh Snack Bar')),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Tooltip(
              message: 'Silahkan tekan tombol ini',
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              waitDuration: const Duration(seconds: 1),
              showDuration: const Duration(seconds: 3),
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Contoh Tooltip')),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                      (route) => false);
                },
                child: const Text('Kembali ke Halaman Utama')),
          )
        ],
      ),
    );
  }
}
