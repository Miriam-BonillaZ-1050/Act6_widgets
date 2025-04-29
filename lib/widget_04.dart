import 'package:flutter/material.dart';

//AlertDialog

class Widget04 extends StatelessWidget {
  const Widget04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff931744), // Fondo rosa
        title: const Text(
          'Widget 04',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
                title: const Text('Flutter Mapp'),
                contentPadding: const EdgeInsets.all(20.0),
                content: const Text('This is the Alert Dialog'),
              ),
            );
          },
        ),
      ),
    );
  }
}
