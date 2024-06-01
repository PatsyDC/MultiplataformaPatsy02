import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final opciones = const['Korn','Slipknot','System of a Down','Limp Bizkit','Powerman 5000'];
   
  const ListView1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Parte 1'),
        elevation: 2,
      ),
      body: ListView(
        children: [
         //llamar los datos desde mi mapa
         ...opciones.map(
          (e) => ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(e),
          ))
        ],
      ),
    );
  }
}

