import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penerapan_obx/page/halaman4.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Tiga'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(HalamanEmpat());
                },
                child: Text('Menuju Page 4 >>')),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('<< Kembali Page 2')),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'Teks Dialog',
                      middleText: 'Kamu belum beruntung, coba lagi :p',
                      confirm: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Mantap')));
                },
                child: Text('Tampilkan Dialog'))
          ],
        ),
      ),
    );
  }
}
