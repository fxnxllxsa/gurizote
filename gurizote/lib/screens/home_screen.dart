import 'package:flutter/material.dart';
import 'package:gurizote/utils/profile_avatar.dart';
import 'package:gurizote/screens/profile_screen.dart';

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
      routes: {
        '/ofertas': (context) => const MyHomePage(title: 'Ofertas'),
        '/saldo': (context) => const MyHomePage(title: 'Saldo'),
        '/notificacoes': (context) => const MyHomePage(title: 'Notificações'),
        '/sair': (context) => const MyHomePage(title: 'Sair'),
        '/profile': (context) => const ProfileScreen(title: 'Profile'),
      },
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
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Color.fromARGB(255, 0, 255, 0),
            height: 5.0,
        //  style: BorderStyle.solid,
        ),
       ),
       iconTheme: ,
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
                        imageUrl: 'https://www.patioestadualparana.org/web/fotos/lotes_1374_impreza-2-0-2-0-16v-h4_patioestadualparana.org_zzd663720f8c.jpeg',
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
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