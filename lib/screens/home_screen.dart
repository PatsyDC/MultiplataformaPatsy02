//import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter Parte 2',
        style: TextStyle(color: Colors.white)),
        elevation: 0,
        //backgroundColor: Colors.indigo[800],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon, color: AppTheme.primary),
          title: Text(AppRoutes.MenuOptions[index].name),
          trailing: const Icon(
            Icons.fork_right_sharp,
            color: AppTheme.primary,
          ),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => const AlertScreen());
            //Navigator.push(context, route);
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.MenuOptions.length,
      ),
    );
  }
}