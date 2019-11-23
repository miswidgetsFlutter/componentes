import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home.dart';

class AvatarP extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      ),
      body: Center(
        child: Text('ora putoo', style: TextStyle(fontSize: 60)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.assignment_return),
        onPressed: (){

          final route = MaterialPageRoute(
            builder: (context) => Home(),
          );

          Navigator.push(context, route);
          //Navigator.pop(context, route); //regresa a la pag anterior
        },
      ),
    );
  }
}