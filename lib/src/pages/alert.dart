import 'package:componentes/src/pages/avatar.dart';
import 'package:flutter/material.dart';

class AlertP extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(//boton para regresar 
        child: Icon (Icons.add_location),
        onPressed: (){

          final route = MaterialPageRoute(
            builder: (context) => AvatarP(),
          );
          Navigator.push(context, route);
        },
      ),
    );
  }
}