import 'package:flutter/material.dart';
import '/ui/pasien_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasien',
      debugShowCheckedModeBanner: false,
      home: PasienPage(),
    );
  }
}

