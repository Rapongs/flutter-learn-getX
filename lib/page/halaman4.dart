import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penerapan_obx/page/halaman1.dart';

class HalamanEmpat extends StatelessWidget {
  const HalamanEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Empat'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.offAll(HalamanSatu());
                },
                child: Text('Kembali Page 1')),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('<< Kembali Page 3')),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: double.infinity,
                    color: Colors.white,
                    child: Text('Ini adalah bottom sheet'),
                  ));
                },
                child: Text('Tampilkan bottom sheet'))
          ],
        ),
      ),
    );
  }
}
