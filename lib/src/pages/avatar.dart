import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home.dart';

class AvatarP extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRDlnr6K4Oga30GpfjGblEFNEKWyauTrlYb98lC1TaTQ_CSEhg3"),
              radius: 20.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),

      body: Center(
        child: FadeInImage(
          image: NetworkImage("http://www.llumac.cat/iconpics/f/11/119970/iron-man-logo-png.png"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: boton_flotante(context),
    );
  }

  Widget boton_flotante(BuildContext context){
    return FloatingActionButton(
        child: Icon(Icons.assignment_return),
        onPressed: (){

          final route = MaterialPageRoute(
            builder: (context) => Home(),
          );

          Navigator.push(context, route);
          //Navigator.pop(context, route); //regresa a la pag anterior
        },
      );
  }

}

