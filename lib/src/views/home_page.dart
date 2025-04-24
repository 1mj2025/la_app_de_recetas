/*
import 'package:flutter/material.dart';
import 'package:mi_recetario_app/src/views/favoritos.dart';
import 'package:mi_recetario_app/src/views/git_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late PageController pc;

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
        extendBody: true,
        body: PageView(
          controller: pc,
          onPageChanged: setPaginaActual,
          children: [
            GitPage(),
            Favoritospage(),


           // mi login hace falta
            //LoginPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 245, 187, 116),
            selectedItemColor: colores[selectedIndex],
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
                pc.animateToPage(value,
                    duration: Duration(milliseconds: 400), curve: Curves.ease);
              });
            },
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
}*/