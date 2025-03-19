import 'package:flutter/material.dart';
import 'package:gurizote/screens/home_screen.dart';
import 'package:gurizote/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Sexo 02'),
      routes: {
        '/home': (context) => const MyHomePage(title: 'Home'),
        '/profile': (context) => const ProfileScreen(title: 'Profile'),
        '/settings': (context) => const MyHomePage(title: 'Settings'),
        '/sair': (context) => const MyHomePage(title: 'Sair'),
        '/notificacoes': (context) => const MyHomePage(title: 'Notificações'),
        '/ofertas': (context) => const MyHomePage(title: 'Ofertas'),
        '/saldo': (context) => const MyHomePage(title: 'Saldo'),
      },
    );
  }
}