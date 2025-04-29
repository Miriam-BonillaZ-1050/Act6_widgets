import 'package:flutter/material.dart';

//AnimatedCrossFade

class Widget09 extends StatefulWidget {
  const Widget09({super.key});

  @override
  State<Widget09> createState() => _Widget09State();
}

class _Widget09State extends State<Widget09> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0099a4),
        title: const Text(
          'Widget 09',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // ← solución aquí
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text(
                'Switch',
                style: TextStyle(color: Colors.black),
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(seconds: 1),
              firstChild: Image.asset(
                'assets/icon/blue.jpg',
                width: double.infinity,
              ),
              secondChild: Image.asset(
                'assets/icon/ocean.jpg',
                width: double.infinity,
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ],
        ),
      ),
    );
  }
}
