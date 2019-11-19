import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu.dart';
import 'package:componentes/src/utils/icono_string.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build( context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componetes'),
      ),
      body: _lista(),
          );
  }//build
      
  Widget _lista() {

    return FutureBuilder(
      future: menup.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        
        return ListView(children: _listaItems(snapshot.data ));
      
      },
    );

    /*return ListView(
      children: _listaItems(),
    );*/
  }
      
  List<Widget> _listaItems( List<dynamic> data) {
    
    final List<Widget> opciones = [];

    data.forEach( (opc) {
      final widgetTemp = ListTile(
        title: Text(opc['texto']),
        leading: getIcon( opc['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.green),
        onTap: (){
          
        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());

    });
    return opciones;
  
  }


}