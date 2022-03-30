import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muebleria El Camino'),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_active),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.red,
            onSurface: Colors.grey,
            side: BorderSide(color: Colors.black, width: 1),
            elevation: 20,
            minimumSize: Size(150, 50),
          ),
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('REGISTRARSE'),
        ),
      ),
    );
  }
}
