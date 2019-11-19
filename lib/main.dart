import 'package:flutter/material.dart';
//usamos
//import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/pages/home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false, //borra el liston debug
      home: Home(),
    );
  }
}