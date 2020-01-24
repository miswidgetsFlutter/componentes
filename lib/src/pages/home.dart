import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu.dart';
import 'package:componentes/src/utils/icono_string.dart';
//import 'package:componentes/src/pages/alert.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('componetes'),
      ),
      body: _lista(),
    );
  }//build
      
  Widget _lista() {

    return FutureBuilder(
      future: menup.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot< List<dynamic> > snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context)
        );
      },
    );
  }
      
  List<Widget> _listaItems( List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    if (data == null) {
      return [];
    }

    data.forEach( (opc) {
      
      final widgetTemp = ListTile(
        title: Text(opc['texto']),
        leading: getIcon( opc['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.green),
        onTap: (){

          Navigator.pushNamed(context, opc['ruta']);
          /*final route = MaterialPageRoute(
            builder: (context) => AlertP()            
          );
          Navigator.push(context, route);*/
        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());

    });
    return opciones;
  }

}