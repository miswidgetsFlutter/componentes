import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
//usamos
//import 'package:componentes/src/pages/home_temp.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false, //borra el liston debug
      //home: Home(),
      initialRoute: '/',  //declaramos la ruta inicial
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('la ruta por defecto es ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertP()
        );
      },
    );
  }
}