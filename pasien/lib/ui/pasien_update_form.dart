import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '/ui/pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPasienCtrl = TextEditingController();

  @override
  void iniState() {
    super.initState();
    setState(() {
      _namaPasienCtrl.text = widget.pasien.namaPasien;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPasien(), SizedBox(height: 20), _tombolSimpan()]
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text);
        Navigator.pop(context);
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)));
      },
      child: const Text("Simpan Perubahan"));
  }
}