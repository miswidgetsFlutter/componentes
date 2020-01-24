import 'dart:ffi';

import 'package:componentes/src/pages/avatar.dart';
import 'package:flutter/material.dart';

class AlertP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'mostrar alerta',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed:() => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'jeje',
        foregroundColor: Colors.red,
        //boton para regresar
        child: Icon(Icons.add_location),
        onPressed: () {
          final route = MaterialPageRoute(
            builder: (context) => AvatarP(),
          );
          Navigator.push(context, route);
        },
      ),
    );
  }

  final _jiji = TextStyle(color: Colors.white);
  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text('hola marco'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('este es el contenido de la caja de alerta'),
              FlutterLogo(size: 100.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('ok'),
              onPressed: (){ 
                Navigator.of(context).pop();
              },
            ),
          ],
          //content: Text('hallaaaaa', style: _jiji,),
          //backgroundColor: Colors.black,
        );
      }
    );
  }

}
