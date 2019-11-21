import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/pages/avatar.dart';
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
      //home: Home(),
      initialRoute: '/',  //declaramos la ruta inicial
      routes: <String, WidgetBuilder>{
        '/' : ( BuildContext context ) => Home(), //esta sera la ruta inicial
        'alert' : ( BuildContext context ) => AlertP(),//esta como su nombre lo dice
        'avatar' : ( BuildContext context ) => AvatarP(),//esta igual
      },
    );
  }
}