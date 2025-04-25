

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
  final List<String> routes = ['/recetas', '/favoritos', '/register'];
  void onItemTapped(int index) {
    if(index ==1){
      final user = FirebaseAuth.instance.currentUser;
      if(user == null){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
           
            content: Text('Debes de tener una cuenta para acceder a favoritos'),
            backgroundColor: Colors.redAccent,
            ),
        );
        Navigator.pushReplacementNamed(context, '/register');
    setState(() {
      selectedIndex = index;
    });
    context.go(routes[index]);
  }
   }
 }
  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: selectedIndex);
  }

  setPaginaActual(value) {
    setState(() {
      selectedIndex = value;
    });
  }

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
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: colores[selectedIndex],
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            items: [
             
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  activeIcon: Icon(Icons.favorite),
                  label: "Favoritos"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  activeIcon: Icon(Icons.account_circle),
                  label: "Registro")
            ]));
  }
}