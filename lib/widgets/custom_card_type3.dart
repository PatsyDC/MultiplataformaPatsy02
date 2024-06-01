import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {

  //Declarar una variable que cambiará las propiedades de la widget
  final String imageURL;
  final String? descripcion;

  const CustomCardType3({
    super.key, required this.imageURL, this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),            
      elevation: 10,
      child: Column(
        children: [
          /*Image(
            image:NetworkImage('https://i.blogs.es/8eaa43/goku-day-dragon-ball/500_333.jpeg')
          )*/
          FadeInImage(
          placeholder: const AssetImage('assets/banana-loading.gif'), 
          image: NetworkImage(imageURL),
          width:double.infinity,
          height: 240,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
          ),
          // ignore: avoid_unnecessary_containers
          if (descripcion != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(descripcion??'<sin dato>'),
          )
        ],
      ),
    );
  }
}