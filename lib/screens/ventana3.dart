import 'package:flutter/material.dart';

class Ventana3 extends StatefulWidget {
  const Ventana3({super.key});

  @override
  State<Ventana3> createState() => _Ventana3State();
}

class _Ventana3State extends State<Ventana3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("ventana 3"),
          Text("<--Dezplazar")
        ],
      ),
    );
  }
}