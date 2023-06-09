import 'package:flutter/material.dart';

class NotesDetails extends StatelessWidget {
  final String details;

  const NotesDetails({
    super.key,
    required this.details
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(details),
      ),
    );
  }
}