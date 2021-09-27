import 'package:flutter/material.dart';
import 'package:tugas_msib_lanjutan/register.dart';
import 'package:tugas_msib_lanjutan/splash.dart';
import 'package:tugas_msib_lanjutan/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => FirstRoute(),
        });
  }
}
