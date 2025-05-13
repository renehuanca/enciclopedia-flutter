
import 'package:flutter/material.dart';

class InicioScreen extends StatefulWidget {
  final VoidCallback irALista;
  const InicioScreen({super.key, required this.irALista});
  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enciclopedia 🐶',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: widget.irALista,
              child: const Text("Lista de animales"),
            ),
          ],
        ),
      ),
    );
  }

}