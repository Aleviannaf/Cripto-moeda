import 'package:cripto_moedas/pages/moeda.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cripto Moedas',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MoedaPage(),
    );
  }
}

