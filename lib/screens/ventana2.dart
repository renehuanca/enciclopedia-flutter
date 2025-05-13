import 'package:flutter/material.dart';

class Ventana2 extends StatefulWidget {
  const Ventana2({super.key});

  @override
  State<Ventana2> createState() => _Ventana2State();
}

class _Ventana2State extends State<Ventana2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("ventana 2"),
          Text("<--Dezplazar")
        ],
      ),
    );
  }
}