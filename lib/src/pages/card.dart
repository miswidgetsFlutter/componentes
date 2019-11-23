import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  var _jeje = "soy marco me gusta programar y picarle al codigo asi de chido";
  
  final est = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('card'),
      ),
      body: ListView(
        //padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo2(),
          _cardTipo2(),
        ],
      )
    );
  }

  
  Widget _cardTipo2(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('soy el titulo de esta tarjeta'),
            subtitle: Text('$_jeje'),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('cancelar', style: est),
                  onPressed: (){
                    print('cancelar');
                  },
                ),
                FlatButton(
                  child: Text('ok', style: est),
                  onPressed: (){
                    print('Ok');
                  },
                ),
              ],
            ),
          )
          
          /*Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('ok'),
                onPressed: (){},
              ),
            ],
          )*/
        ],
      ),
    );
  }

}