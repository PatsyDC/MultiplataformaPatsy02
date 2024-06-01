import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final opciones = const['Korn','Slipknot','System of a Down','Limp Bizkit','Powerman 5000','Marilyn Manson'];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Nueva ListView'),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          title: Text(opciones[index]),
          leading: const Icon(Icons.music_video_outlined),
          trailing: const Icon(Icons.check_circle, color: Color.fromARGB(100, 136, 14, 79)),
          onTap: () {
            final opt = opciones[index];
            print(opt);
          },
        ),
        separatorBuilder:(context, index) => const Divider(),
        itemCount: opciones.length
        )
    );
  }
}