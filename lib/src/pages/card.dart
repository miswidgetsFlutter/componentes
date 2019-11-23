import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  final _jeje = "soy marco me gusta programar y picarle al codigo asi de chido";
  
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
          SizedBox(height: 30.0),
          _cardTipo3(),
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

  Widget _cardTipo3(){

    return Card(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
          ),

          /*Image(
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg'),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('no se que poner'),
          )
        ],
      ),
    );

  }

}