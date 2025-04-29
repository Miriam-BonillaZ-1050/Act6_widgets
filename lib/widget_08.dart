// ignore: unused_import
import 'dart:math' as math;
import 'package:flutter/material.dart';

//AnimatedContainer

class Widget08 extends StatefulWidget {
  const Widget08({super.key});

  @override
  State<Widget08> createState() => _Widget08State();
}

class _Widget08State extends State<Widget08> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00ba8c),
        title: const Text(
          'Widget 08',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.cyan : Colors.black,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
    );
  }
}
