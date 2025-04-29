import 'package:flutter/material.dart';

//AbsorbPointer

class Widget03 extends StatelessWidget {
  const Widget03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff822271), // Fondo rosa
        title: const Text(
          'Widget 03',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // ignore: prefer_const_constructors
                    backgroundColor: Color(0xffc6c6c6)),
                onPressed: () {},
                child: null,
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200),
                  onPressed: () {},
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
