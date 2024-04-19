import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _AnimatedContainterAppState();
}

class _AnimatedContainterAppState extends State<MyApp> {
  double _altura = 20;
  double _anchura = 20;
  Color _color = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(5);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo flutter 1'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _altura,
            height: _anchura,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            final aleatorio = Random();
            _altura = aleatorio.nextInt(350).toDouble();
            _anchura = aleatorio.nextInt(350).toDouble();
            _color = Color.fromRGBO(
              aleatorio.nextInt(256),
              aleatorio.nextInt(256),
              aleatorio.nextInt(256),
              1,
            );
          });
        }),
      ),  
    );
  }
}
