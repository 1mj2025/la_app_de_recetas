/*
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mi_recetario_app/src/views/detalle_recetas_page.dart';
import 'package:mi_recetario_app/src/views/favoritos.dart';
import 'package:mi_recetario_app/src/views/home_page.dart';

final router = GoRouter(
  initialLocation: '/recetas',
  routes: [
    GoRoute(
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
            print(extras);

            return DetalleRecetasPage(
              id: '$id',
              extras: extras,
            );
          },
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
  ],
);*/