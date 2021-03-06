import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//usamos
//import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'), // English
        const Locale('es','ES'), // Hebrew
      ],
      title: 'Componentes App',
      debugShowCheckedModeBanner: false, //borra el liston debug
      initialRoute: '/', //declaramos la ruta inicial
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        //solo para imprimir en consola
        print('la ruta por defecto es ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => AlertP());
      },
    );
  }
}
