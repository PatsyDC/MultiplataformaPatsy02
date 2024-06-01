import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
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
          const FadeInImage(
          placeholder: AssetImage('assets/banana-loading.gif'), 
          image: NetworkImage('https://i.blogs.es/8eaa43/goku-day-dragon-ball/500_333.jpeg'),
          width:double.infinity,
          height: 240,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Dragon Ball The Movie'),
          )
        ],
      ),
    );
  }
}