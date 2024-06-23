import 'package:flutter/material.dart';
import '/ui/beranda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasien',
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}

