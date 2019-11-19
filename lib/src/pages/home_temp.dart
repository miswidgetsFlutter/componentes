import 'package:flutter/material.dart';

class Hometemp extends StatelessWidget {

  final opciones = ['uno','dos','tres','cuatro','cinco'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes Temp'),
      ),
      body: ListView(
        children: crearItemCorta(),
      ),
    );
  }

  //crear lista con el for y lista 
  List<Widget> _crearItems(){
    
    List<Widget> lista = new List<Widget>();

    for (String opc in opciones) {
      final tempWidget = ListTile(
        title: Text(opc),
      );

      lista.add(tempWidget);
      lista.add(Divider());

    }

    return lista;
  }

  //forma de crearlos con el map
  List<Widget> crearItemCorta(){

    var wigts = opciones.map(( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('holito'),
            leading: Icon( Icons.accessibility ),
            trailing: Icon( Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();

    return wigts;

  }

}