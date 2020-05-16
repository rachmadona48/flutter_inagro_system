import 'package:flutter/material.dart';
import 'cek_koneksi.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //untuk testing remark baris ini
      home: Cek_koneksi(),
    );
  }
}