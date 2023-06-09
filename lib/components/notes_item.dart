import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  final String title;

  const NotesItem({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14.0
            ),
          ),
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}