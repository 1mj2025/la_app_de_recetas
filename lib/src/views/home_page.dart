
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mi_recetario_app/src/views/favoritos.dart';
import 'package:mi_recetario_app/src/views/git_page.dart';
import 'package:mi_recetario_app/widgets/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late PageController pc;
  
  final List<String> routes = ['/recetas', '/favoritos', '/login',  '/register'];
  void onItemTapped(int index) {
    if(index==1){
      final user=FirebaseAuth.instance.currentUser;
      if(user==null){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Debes de tener una cuenta para ingresar al apartado de favoritos'),
          backgroundColor: Colors.red,)
        );
        Navigator.pushNamed(context,'/register');
        return;
        
      }
    }
    setState(() {
      selectedIndex = index;
    });
    context.go(routes[index]);
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
        extendBody: true,
        body: PageView(
          controller: pc,
          onPageChanged: setPaginaActual,
          children: [
            GitPage(),
             Favoritospage(),


           // mi login hace falta
             LoginPage(),
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
}