import 'package:flutter/material.dart';
import 'package:preferences/shared_preferences/preferences.dart';
import 'package:preferences/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  static String routeName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('DarkMode: ${Preferences.isDarkMode} '),
          Divider(),
          Text('Género: ${Preferences.gender}'),
          Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
        ]
      ),
    );
  }
}