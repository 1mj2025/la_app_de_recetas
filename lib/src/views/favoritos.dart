/*import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mi_recetario_app/widgets/barra_inferior.dart';

class Favoritospage extends StatefulWidget {
  const Favoritospage({super.key});

  @override
  State<Favoritospage> createState() => _FavoritospageState();
}

class _FavoritospageState extends State<Favoritospage> {
  int selectedIndex = 0;
  late PageController pc;

  final colores = [Colors.blueGrey, Colors.deepOrange, Colors.green];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 187, 116),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 187, 116),
        title: Text(
          "Mis Favoritos",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: recetasFavoritas.length,
        itemBuilder: (context, index) {
          final receta = recetasFavoritas[index];
          return Card(
              child: InkWell(
                  onTap: () {
                    context.goNamed(
                      'detalle-recetas',
                      pathParameters: {'recetasId': receta['id'].toString()},
                      extra: receta,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 250,
                            fit: BoxFit.fill,
                            image: NetworkImage(receta['image']),
                          ),
                          Text(
                            (receta['nombre']),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  )));
        },
      ),
    );
  }
}*/