import 'package:flutter/material.dart';

//Align

class Widget05 extends StatelessWidget {
  const Widget05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffa84b00), // Fondo rosa
        title: const Text(
          'Widget 05',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Container(
          height: 120.0,
          width: double.infinity,
          color: Colors.amber,
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
