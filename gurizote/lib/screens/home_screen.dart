import 'package:flutter/material.dart';
import 'package:gurizote/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
  get onPressed => null;
  
  get child => null;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text('Menu'),
                ),
              ),
            ListTile(
                title: Center(
                child: Text('Ofertas'),
                ),
                onTap: () => Navigator.pushNamed(context, '/ofertas'),
                ),
            ListTile(
                title: Center(
                 child: Text('Saldo'),
                ),
                onTap: () => Navigator.pushNamed(context, '/saldo'),
              ),
              ListTile(
                title: Center(
                 child: Text('Notificações'),
                ),
                onTap: () => Navigator.pushNamed(context, '/notificacoes'),
              ),
              ListTile(
                title: Center(
                 child: Text('Sair'),
                ),
                onTap: () => Navigator.pushNamed(context, '/sair'),
              )
            ],
          ),
        ),
      ),
    );
  }
}