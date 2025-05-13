import 'package:flutter/material.dart';
import 'package:flutter_application_por_defecto/screens/ventana1.dart';
import 'package:flutter_application_por_defecto/screens/ventana2.dart';
import 'package:flutter_application_por_defecto/screens/ventana3.dart';

class VentanaScreen extends StatefulWidget{
  const VentanaScreen({super.key});

  @override
  State<VentanaScreen> createState() => _VentanaScreenState();
}
class _VentanaScreenState extends State<VentanaScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Ventanas"),
      ),
      body: PageView(
        children: [
          Ventana1(),
          Ventana2(),
          Ventana3(),
        ],
      ),
    );
  }
}