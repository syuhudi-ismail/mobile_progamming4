import 'package:flutter/material.dart';
import 'baris_kolom.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'klinik',
      home: BarisKolomWidget(),
      );
  }
}
