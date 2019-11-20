import 'package:flutter/material.dart';

class AvatarP extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      ),
      body: Center(
        child: Text('ora putoo', style: TextStyle(fontSize: 30)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.assignment_return),
        onPressed: (){
          Navigator.pop(context); //regresa a la pag anterior
        },
      ),
    );
  }
}