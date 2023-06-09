import 'package:flutter/material.dart';
import 'package:todo_app/components/notes_item.dart';

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({super.key});

  @override
  State<NotesListScreen> createState() => _NotesListScreenState();
}

class _NotesListScreenState extends State<NotesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notas'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: [
            NotesItem(title: 'Lista de convidados'),
            NotesItem(title: 'Compras no mercado'),
          ],
        ),
      ),
    );
  }
}