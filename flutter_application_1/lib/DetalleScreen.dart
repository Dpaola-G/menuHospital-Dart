import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  final String titulo;

  const DetalleScreen(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Center(
        child: Text("Detalle de $titulo"),
      ),
    );
  }
}
