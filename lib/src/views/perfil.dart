
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            
            onPressed: () async {
              await FirebaseAuth.instance.signOut(); 
              Navigator.pushReplacementNamed(context, '/login'); 
            },
          ),
        ],
      ),
      backgroundColor: Colors.white, 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 26),
              const Text(
                'HOLA MUNDO',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}