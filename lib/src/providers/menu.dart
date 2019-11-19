import 'dart:convert';

import 'package:flutter/services.dart';


class _MenuP {
  List<dynamic> opciones = [];

  _MenuP(){
    cargarData();
  }

  Future< List<dynamic> > cargarData() async{
    
    final resp = await rootBundle.loadString('data/menu_opts.json');

      Map dataMap = json.decode( resp );
      //print(dataMap['rutas']);
      opciones = dataMap['rutas'];

      return opciones;
  }
}

final menup = new _MenuP();