// Função principal que é chamada quando a aplicação é iniciada.
import 'package:flutter/material.dart';
import 'package:market_app/layouts/navbar.dart';

void main() async {

  // Inicializa o aplicativo chamando o widget MyApp.
  runApp(MyApp());
}

// Widget principal que representa toda a aplicação.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavBar(),
    ); 
  }
}
