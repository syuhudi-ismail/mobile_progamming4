import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_update_form.dart';
import 'pasien_page.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pasien")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: TextStyle(fontSize: 20),
          ), 
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              style:
                ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("Ubah")),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }

  _tombolHapus() { 
    return ElevatedButton( 
      onPressed: () { 
        AlertDialog alertDialog = AlertDialog( 
          content: const Text("Yakin ingin menghapus data ini?"), 
          actions: [ 
            // tombol ya 
            ElevatedButton( 
              onPressed: () { 
                Navigator.pop(context); 
                Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context) => PasienPage())); 
              }, 
              child: const Text("YA"), 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
            ), 
            // tombol batal 
            ElevatedButton( 
              onPressed: () { 
                Navigator.pop(context); 
              }, 
              child: Text("Tidak"), 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green), 
            ) 
          ], 
        ); 
        showDialog(context: context, builder: (context) => alertDialog); 
      }, 
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
      child: const Text("Hapus")); 
  } 
}