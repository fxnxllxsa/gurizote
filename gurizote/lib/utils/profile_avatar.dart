import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  const ProfileAvatar({required this.imageUrl, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: 'Profile Picture',
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://www.patioestadualparana.org/web/fotos/lotes_1374_impreza-2-0-2-0-16v-h4_patioestadualparana.org_zzd663720f8c.jpeg'),
          radius: 40, // Ajuste o tamanho conforme necessário
        ),
      ),
    );
  }
}