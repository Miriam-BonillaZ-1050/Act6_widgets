import 'package:flutter/material.dart';
import 'package:act_6_widgets_/pagina_inicial.dart';
import 'package:act_6_widgets_/widget_02.dart';
import 'package:act_6_widgets_/widget_03.dart';
import 'package:act_6_widgets_/widget_04.dart';
import 'package:act_6_widgets_/widget_05.dart';
import 'package:act_6_widgets_/widget_06.dart';
import 'package:act_6_widgets_/widget_07.dart';
import 'package:act_6_widgets_/widget_08.dart';
import 'package:act_6_widgets_/widget_09.dart';
import 'package:act_6_widgets_/widget_10.dart';
import 'package:act_6_widgets_/widget_11.dart';

// ignore: prefer_const_constructors
void main() => runApp(Rutas());

class Rutas extends StatelessWidget {
  // ignore: use_super_parameters
  const Rutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/pantalla2': (context) => const Widget02(),
        '/pantalla3': (context) => const Widget03(),
        '/pantalla4': (context) => const Widget04(),
        '/pantalla5': (context) => const Widget05(),
        '/pantalla6': (context) => const Widget06(),
        '/pantalla7': (context) => const Widget07(),
        '/pantalla8': (context) => const Widget08(),
        '/pantalla9': (context) => const Widget09(),
        '/pantalla10': (context) => const Widget10(),
        '/pantalla11': (context) => const Widget11(),
      },
    );
  }
}
