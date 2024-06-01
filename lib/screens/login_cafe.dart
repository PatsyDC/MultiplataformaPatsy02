import 'package:flutter/material.dart';

void main() => runApp(const LoginCafe());

class LoginCafe extends StatelessWidget {
  const LoginCafe({super.key});

  //variable color gris
  static const Color plomoColor = Color.fromARGB(255, 71, 71, 71);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20.0), //izquierda y derecha
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, //separación entre los 3 componentes igual
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, //izquierda
                children: [
                  Text('Cafe',
                  style: TextStyle(color: Colors.brown, 
                  fontSize:  70, 
                  fontWeight: FontWeight.bold),
                  ),
                  Text('Nuestro mejor café del mundo',
                  style: TextStyle(
                    fontSize: 15,
                    color: plomoColor
                  ),)
                ],
              ),
              Image.asset('assets/coffe.gif'), 
              Column(
                children: [
                  ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20),
                    minimumSize: const Size(double.infinity, 50) 
                  ),
                  child: const Text('Iniciar Sesión',
                  style: TextStyle(color:Colors.white),)),
                  const SizedBox(height: 10), //separar los botones
                  ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    side: const BorderSide(color: Colors.brown),
                    padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20),
                    minimumSize: const Size(double.infinity, 50) 
                  ),
                  child: const Text('Registrate', 
                  style: TextStyle(color:Colors.brown),)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
