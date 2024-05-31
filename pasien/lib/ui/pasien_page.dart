import 'package:flutter/material.dart'; 
import '../model/pasien.dart'; 
import 'pasien_detail.dart'; 
import 'pasien_item.dart'; 
import 'pasien_form.dart'; 
 
class PasienPage extends StatefulWidget { 
  const PasienPage({super.key}); 

  @override 
  State<PasienPage> createState() => _PasienPageState(); 
} 
class _PasienPageState extends State<PasienPage> { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text("Data Pasien"), backgroundColor: Colors.blue,
        actions: [ 
          GestureDetector( 
            child: const Icon(Icons.add), 
            onTap: () { 
              Navigator.push( 
                  context, MaterialPageRoute(builder: (context) => PasienForm())); 
            }, 
           ) 
          ], 
        ), 
        body: ListView( 
          children: [ 
            PasienItem(pasien: Pasien(namaPasien: "ID")), 
            PasienItem(pasien: Pasien(namaPasien: "Nama")), 
            PasienItem(pasien: Pasien(namaPasien: "Tanggal Lahir")), 
            PasienItem(pasien: Pasien(namaPasien: "Nomer Telepon")),
            PasienItem(pasien: Pasien(namaPasien: "Alamat")), 
          ], 
        ), 
      ); 
    } 
  } 