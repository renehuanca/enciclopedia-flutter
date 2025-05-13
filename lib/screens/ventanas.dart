import 'package:flutter/material.dart';
import 'package:flutter_application_por_defecto/screens/inicio_screen.dart';
import 'package:flutter_application_por_defecto/screens/detalle_animal_screen.dart';

class VentanaScreen extends StatefulWidget {
  const VentanaScreen({super.key});

  @override
  State<VentanaScreen> createState() => _VentanaScreenState();
}

class _VentanaScreenState extends State<VentanaScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    // Inicialización del PageController si es necesario
  }

  @override
  void dispose() {
    // Limpiar el PageController al destruir el widget
    _pageController.dispose();
    super.dispose();
  }

  void irALista() {
    // Asegurarse de que la navegación ocurra después de que el árbol de widgets se haya renderizado
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Navegar a la página 2 (índice 1)
      _pageController.jumpToPage(1);
    });
  }

  List<Map<String, String>> animales = [
    {
      'nombre': 'León',
      'descripcion':
          'El león es un gran felino carnívoro conocido como el rey de la selva. Vive en las sabanas africanas y es famoso por su melena imponente y su rugido poderoso.',
      'imagen': '/images/leon.jpg',
      'sonido': '/sounds/leon.mp3',
    },
    {
      'nombre': 'Elefante',
      'descripcion':
          'El elefante es el animal terrestre más grande del planeta. Se distingue por sus enormes orejas, su trompa fuerte y su memoria excepcional. Vive en manadas y es muy inteligente.',
      'imagen': '/images/elefante.jpg',
      'sonido': '/sounds/elefante.mp3',
    },
    {
      'nombre': 'Gaviota',
      'descripcion':
          'La gaviota es un ave marina que suele habitar cerca de las costas. Es conocida por su chillido característico y su habilidad para volar largas distancias en busca de alimento.',
      'imagen': '/images/gaviota.jpg',
      'sonido': '/sounds/gaviota.mp3',
    },
    {
      'nombre': 'Gato',
      'descripcion':
          'El gato es un felino doméstico ágil, curioso y muy independiente. Es un excelente cazador de pequeños animales y se comunica a través de maullidos, ronroneos y su lenguaje corporal.',
      'imagen': '/images/gato.jpg',
      'sonido': '/sounds/gato.mp3',
    },
    {
      'nombre': 'Serpiente',
      'descripcion':
          'La serpiente cascabel es una especie venenosa que se encuentra en América. Se caracteriza por el sonido de su cola, que usa como advertencia. Su mordida puede ser peligrosa si no se trata a tiempo.',
      'imagen': '/images/serpiente.jpg',
      'sonido': '/sounds/serpiente.mp3',
    },
  ];

  Map<String, String>? _animalSeleccionado;

  void verMasInformacion(Map<String, String> animal) {
    setState(() {
      _animalSeleccionado = animal;
    });
    // Asegurarse de que la navegación ocurra después de que el árbol de widgets se haya renderizado
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Navegar a la página 3 (índice 2)
      _pageController.jumpToPage(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enciclopedia de animales"),
      ),
      body: PageView(
        controller: _pageController,  // Aseguramos que el PageController esté vinculado
        children: [
          InicioScreen(irALista: irALista),

          Scaffold(
            body: ListView.builder(
              itemCount: animales.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${animales[index]['nombre']}"),
                  trailing: ElevatedButton(
                    onPressed: () => verMasInformacion(animales[index]),
                    child: Text("Ver más"),
                  ),
                );
              },
            ),
          ),
          _animalSeleccionado != null
              ? DetalleAnimalScreen(animal: _animalSeleccionado!)
              : const Center(child: Text("No hay animal seleccionado")),
        ],
      ),
    );
  }
}
