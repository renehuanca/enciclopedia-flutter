import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DetalleAnimalScreen extends StatefulWidget {
  final Map<String, String> animal;

  const DetalleAnimalScreen({super.key, required this.animal});

  @override
  State<DetalleAnimalScreen> createState() => _DetalleAnimalScreenState();
}

class _DetalleAnimalScreenState extends State<DetalleAnimalScreen> {
  final AudioPlayer _player = AudioPlayer();

  void _reproducirSonido() async {
    await _player.play(AssetSource(widget.animal['sonido']!));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.animal['nombre']!)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.animal['imagen']!),
            Text(widget.animal['nombre']!, style: TextStyle(fontSize: 24)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.animal['descripcion']!),
            ),
            ElevatedButton(
              onPressed: _reproducirSonido,
              child: Text('Reproducir sonido'),
            ),
          ],
        ),
      ),
    );
  }
}
