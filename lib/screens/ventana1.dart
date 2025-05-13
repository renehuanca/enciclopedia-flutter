import 'dart:math';

import 'package:flutter/material.dart';

class Ventana1 extends StatefulWidget {
  const Ventana1({super.key});

  @override
  State<Ventana1> createState() => _Ventana1State();
}

class _Ventana1State extends State<Ventana1> {
  List<String> frase=["frase 1","frase 2","frase 3", "frase 4"];
  String fraseActual="Viva la vida!!!";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(fraseActual),
            ElevatedButton(onPressed: cambiarFrase, child: Text("nueva frase")),
            Text("ventana 1",
            style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),),
            Text("deslizar -->"),
          ],
        ),
      ),
    );
  }
  
  void cambiarFrase() {
    Random indice= Random();
    final nuevaFrase=frase[indice.nextInt(frase.length)];
    setState(() {
      fraseActual=nuevaFrase;
    });
  }
}