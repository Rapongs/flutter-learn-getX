import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penerapan_obx/page/halaman2.dart';

class HalamanSatu extends StatelessWidget {
  var teks = 'Ini adalah teks yang bisa diubah'.obs;

  void ubahTeks() {
    teks.value == teks.value.toLowerCase()
        ? teks.value = teks.value.toUpperCase()
        : teks.value = teks.value.toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Satu'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(HalamanDua());
                },
                child: Text(' Menuju Page 2 >>')),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Obx(() => Text('$teks')),
            ElevatedButton(
                onPressed: () => ubahTeks(), child: Text('Ubah jenis teks'))
          ],
        ),
      ),
    );
  }
}
