/*
import 'package:flutter/material.dart';

class DetalleRecetasPage extends StatelessWidget {
  const DetalleRecetasPage({
    super.key,
    required this.id,
    this.extras,
  });
  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 187, 116),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 187, 116),
        title: Text(
          "Detalle de la receta",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 97, 62, 49),
          ),
          textAlign: TextAlign.center,
        ),
        /*  actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],*/
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Center(child: Image.network(extras?['image'])),
              Center(
                child: Container(
                  color: Colors.white.withOpacity(0.6),
                  child: Text(
                    'Nombre del platillo: ${extras?['nombre']}',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 97, 62, 49)),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
          Container(child: Row(children: [Text('    ')])),
          Center(
            child: Row(
              children: [
                Icon(Icons.access_alarm,
                    color: Color.fromARGB(255, 97, 62, 49)),
                Text(
                  ' ${extras?['tiempo']}',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 62, 49),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          Container(child: Row(children: [Text('    ')])),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                ' Ingredientes: ${extras?['ingredientes']}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 97, 62, 49),
                ),
              ),
            ),
          ),
          Container(child: Row(children: [Text('    ')])),
          Center(
            child: Text(
              ' PREPARACION:',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 97, 62, 49),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                ' ${extras?['preparacion']}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 97, 62, 49),
                ),
              ),
            ),
          ),
          Container(child: Row(children: [Text('    ')])),
        ],
      ),
    );
  }
}*/