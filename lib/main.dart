import 'package:flutter/material.dart';
import 'package:helloworld/pagina1.dart';
import 'package:helloworld/pagina2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Pagina1(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const Pagina2(),
      },
    ),
  );
}

/*class Pagina1 extends StatelessWidget {
  const Pagina1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.house),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.king_bed,
            ),
            onPressed: () {},
          )
        ],
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
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}*/
