import 'package:flutter/material.dart';
import 'package:todo_app/components/notes_item.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: [
            NotesItem(
              title: 'Lista de convidados',
              onTap: () {},
            ),
            NotesItem(
              title: 'Compras no mercado',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
