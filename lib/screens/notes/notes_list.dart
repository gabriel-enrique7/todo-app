import 'package:flutter/material.dart';
import 'package:todo_app/components/notes_item.dart';
import 'package:todo_app/screens/notes/notes_details.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: [
            NotesItem(
              title: 'Lista de convidados',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NotesDetails(details: 'Anotações da Faculdade'),
                  )
                );
              },
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