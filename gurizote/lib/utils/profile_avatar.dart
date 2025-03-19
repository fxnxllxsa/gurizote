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
          backgroundImage: NetworkImage('https://kanto.legiaodosherois.com.br/w250-h250-gnw-cfill-q95-gcc/wp-content/uploads/2021/07/legiao_Ry1hNJoxOzpY.jpg.webp'),
          radius: 40, // Ajuste o tamanho conforme necessário
        ),
      ),
    );
  }
}