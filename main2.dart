import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola esta funcionando el Widget Personalizado',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Personalizado'),
      ),
      body: Center(
        child: MiWidgetPersonalizado(
          texto: '¡Hola, Flutter!',
          colorDeFondo: Colors.blue,
        ),
      ),
    );
  }
}

// Definición del widget personalizado
class MiWidgetPersonalizado extends StatelessWidget {
  final String texto;
  final Color colorDeFondo;
  // Constructor que permite personalizar el texto y el color de fondo
  MiWidgetPersonalizado(
      {Key? key, required this.texto, required this.colorDeFondo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: colorDeFondo,
      child: Center(
        child: Text(
          texto,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
