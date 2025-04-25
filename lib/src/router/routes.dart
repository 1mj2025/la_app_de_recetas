import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mi_recetario_app/src/views/detalle_recetas_page.dart';
import 'package:mi_recetario_app/src/views/favoritos.dart';
import 'package:mi_recetario_app/src/views/home_page.dart';
import 'package:mi_recetario_app/src/views/perfil.dart';
import 'package:mi_recetario_app/widgets/login_page.dart';
import 'package:mi_recetario_app/widgets/register_page.dart';

final router = GoRouter(
  initialLocation: '/recetas',

  routes: [
    GoRoute(
      
   //     '/login': (context) => const LoginPage(),
   //     '/register' : (context) => const RegisterPage(), 
      path: '/recetas',
      name: 'recetas',
      builder: (context, settings) => HomePage(),
      routes: [
        GoRoute(
          path: '/:recetasId',
          name: 'detalle-recetas',
          builder: (BuildContext context, GoRouterState settings) {
            final id = settings.pathParameters['recetasId'];
            final extras = settings.extra as Map;
            debugPrint('extras: $extras');
            //print(extras);

            return DetalleRecetasPage(
              id: '$id',
              extras: extras,
            );
          },
        ),
        GoRoute(
      path: '/register',
     name: '/register',
      builder: (context, State) => const RegisterPage(),
    ),

      ],
    ),
    /*GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, settings) => LoginPage())*/
    GoRoute(
      path: '/favoritos',
      builder: (context, State) => const Favoritospage(),
    ),
    GoRoute(path: '/login' ,
      builder: (context, State) => const LoginPage(),
    ),

    GoRoute(path: '/register' ,
      builder: (context, State) => const RegisterPage(),
    ),
     GoRoute(path: '/perfil' ,
      builder: (context, State) => const Perfil(),
    ),
  ],
);