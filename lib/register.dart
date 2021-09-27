import 'package:flutter/material.dart';
import 'package:tugas_msib_lanjutan/main_page.dart';

void main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

enum GenderGen { laki_laki, perempuan }

class Register extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Register> {
  GenderGen? _character = GenderGen.laki_laki;

  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  TextEditingController controllerDeskripsi = TextEditingController();

  void kirimData() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200.0,
        child: Column(
          children: <Widget>[
            Text("Nama Lengkap : ${controllerNama.text}"),
            Text("Password : ${controllerPass.text}"),
            Text("Deskripsi : ${controllerDeskripsi.text}"),
            Text("Jenis Kelamin : ${_character}"),
            RaisedButton(
                child: Text("Kembali"),
                onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("Formulir"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Form Pendaftararan",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextField(
                  controller: controllerPass,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextField(
                  controller: controllerDeskripsi,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsikan dirimu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                RadioListTile<GenderGen>(
                  title: const Text('Laki-Laki'),
                  value: GenderGen.laki_laki,
                  groupValue: _character,
                  onChanged: (GenderGen? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                RadioListTile<GenderGen>(
                  title: const Text('Perempuan'),
                  value: GenderGen.perempuan,
                  groupValue: _character,
                  onChanged: (GenderGen? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Kirim"),
                  color: Colors.blue,
                  onPressed: () {
                    kirimData();
                  },
                ),
                RaisedButton(
                  child: Text("Kembali"),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstRoute()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
