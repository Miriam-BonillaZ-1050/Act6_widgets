import 'package:flutter/material.dart';

//AboutListTile

class Widget02 extends StatelessWidget {
  const Widget02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff422761), // Fondo rosa
        title: const Text(
          'Widget 02',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: Center(
          // ignore: prefer_const_constructors
          child: AboutListTile(
        // ignore: prefer_const_constructors
        icon: Icon(Icons.info),
        // ignore: prefer_const_constructors
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalese',
        applicationName: 'Flutter App',
        applicationVersion: 'version 1.0.0',
        aboutBoxChildren: [
          // ignore: prefer_const_constructors
          Text('This is a text created by Flutter Mapp')
        ],
      )),
      // ignore: prefer_const_constructors
    );
  }
}
