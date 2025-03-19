import 'package:flutter/material.dart';
import 'package:gurizote/main.dart';
import 'package:gurizote/utils/profile_avatar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 139, 95, 216)),
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
              SizedBox(
                height: 100, // Ajuste a altura conforme necessário
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0), // Ajuste a margem conforme necessário
                      child: ProfileAvatar(
                        imageUrl: 'https://kanto.legiaodosherois.com.br/w250-h250-gnw-cfill-q95-gcc/wp-content/uploads/2021/07/legiao_Ry1hNJoxOzpY.jpg.webp',
                        onTap: () => Navigator.pushNamed(context, '/perfil'),
                      ),
                    ),
                  ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}