import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tugas_msib_lanjutan/register.dart';
import 'package:tugas_msib_lanjutan/splash.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Daftar Kontak',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                ListTile(
                  title: Text('Abdul Aziz Permana'),
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text('Dimas Ibrahim'),
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text('Muhamad Renaldi'),
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text('Wirapermana'),
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text('Zezen J'),
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.phone),
                ),
                ElevatedButton(
                  child: Text('Input Data'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('Keluar'),
                  onPressed: () {
                    SystemNavigator.pop();
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
