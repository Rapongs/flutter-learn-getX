import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penerapan_obx/page/halaman3.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Dua'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(HalamanTiga());
                },
                child: Text('Menuju Page 3 >>')),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('<< Kembali Page 1')),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar('Contoh Snackbar', 'Ini adalah contoh snackbar',
                      animationDuration: Duration(milliseconds: 200),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.blue[200]);
                },
                child: Text('Tekan untuk menampilkan snackbar'))
          ],
        ),
      ),
    );
  }
}
