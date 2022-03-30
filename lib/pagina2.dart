import 'package:flutter/material.dart';
//import 'package:helloworld/pagina1.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Salto(),
          MyWidget(),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  icon: Icon(Icons.email),
                  hintText: "Email",
                  helperText: "Ingrese su correo electronico ",
                ),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  icon: Icon(Icons.house),
                  hintText: "Domicilio del Empleado",
                  helperText: "Ingrese su domicilio ",
                ),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  icon: Icon(Icons.lock),
                  hintText: "NIP del empleado",
                  helperText: "Ingrese un numero de identificacion ",
                ),
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.red,
              onSurface: Colors.grey,
              side: BorderSide(color: Colors.black, width: 1),
              elevation: 20,
              minimumSize: Size(150, 50),
            ),
            // Within the Pagina2 widget
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.pop(context);
            },
            child: const Text('REGRESAR AL INICIO'),
          ),
        ])));
  }
}

class Salto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'REGISTRAR EMPLEADO',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
