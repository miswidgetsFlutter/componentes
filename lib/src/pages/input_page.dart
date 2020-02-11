import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre;
  String _email = '';
  String _pass = '';
  String _fecha = '';
  int cont = 0;
  String _opcSeleccionada = 'volar';

  List<String> _poderes = ['volar', 'rayos X', 'super aliento'];

  TextEditingController _inputFieldDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text("letras $cont"),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'solo es el nombre',
          suffixIcon: Icon(Icons.accessibility_new),
          icon: Icon(Icons.lock_open)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          if (_nombre.length != null) {
            cont = _nombre.length;
          }
          //int nom = _nombre.length == null ? 0 : _nombre.length,
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        setState(() {
          _pass = valor;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDate,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.perm_contact_calendar)),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      //locale: Locale('es', 'Es'),
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDate.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = List();

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton(
          value: _opcSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
            setState(() {
              _opcSeleccionada = opt;
            });
          },
        )
      ],
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_opcSeleccionada),
    );
  }
}
