/*import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mi_recetario_app/firebase_options.dart';

void main() async{ runApp(const MyApp());
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform, );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}*/
/*
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:mi_recetario_app/firebase_options.dart';
import 'package:mi_recetario_app/src/views/home_page.dart';
import 'package:mi_recetario_app/widgets/login_page.dart';
import 'package:mi_recetario_app/widgets/register_page.dart';

//import 'package:my_mini_app/registro/pagina_1.dart';

//import 'sign_out_page.dart'; // Tu página personalizada de cerrar sesión

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

    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Cocina Riko', 
      //aqui modifique quien sera mi pagina que saldra de primero
      home: const HomePage(),
      initialRoute: FirebaseAuth.instance.currentUser == null ? '/recetas' : '/profile',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register' : (context) => const RegisterPage(), 
        //'/profile': (context) => const ProfilePage(), 
        //'/sign-out': (context) => const SignOutPage(),
        ///'/pagina1': (context) => const Pagina1(), 
       /* '/sign-in': (context) {
          return SignInScreen(
            providers: providers,
            actions: [
              AuthStateChangeAction<SignedIn>((context, state) {
                Navigator.pushReplacementNamed(context, '/profile');  
              }),
            ],
          );
        },*/
      },
    );
  }
}*/


/*
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final providers = [EmailAuthProvider()];

    void onSignedIn() {
      Navigator.pushReplacementNamed(context, '/profile');
    }

    return MaterialApp(
      initialRoute: FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/profile',
      routes: {
        '/sign-in': (context) {
          return SignInScreen(
            providers: providers,
            actions: [
              AuthStateChangeAction<UserCreated>((context, state) {
                // Put any new user logic here
                onSignedIn();
              }),
              AuthStateChangeAction<SignedIn>((context, state) {
                onSignedIn();
              }),
            ],
          );
        },
        '/profile': (context) {
          return ProfileScreen(
            providers: providers,
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, '/sign-in');
              }),
            ],
          );
        },
      },
    );
  }
}*/