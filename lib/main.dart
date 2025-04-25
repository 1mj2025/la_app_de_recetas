


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:mi_recetario_app/firebase_options.dart';
import 'package:mi_recetario_app/src/router/routes.dart';
import 'package:mi_recetario_app/src/views/home_page.dart';
import 'package:mi_recetario_app/widgets/login_page.dart';
import 'package:mi_recetario_app/widgets/register_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final providers = [EmailAuthProvider()];

    return MaterialApp.router(

      debugShowCheckedModeBanner: false, 
      title: 'ChefProcess', 
      
      routerConfig: router,
     
    );
  }
}