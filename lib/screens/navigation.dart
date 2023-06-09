import 'package:flutter/material.dart';
import 'package:todo_app/screens/notes/favorites_list.dart';
import 'package:todo_app/screens/notes/notes_list.dart';
import 'package:todo_app/screens/settings/settings.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentPage = 1;

  List<Widget> pages = const [
    SettingsScreen(),
    NotesListScreen(),
    FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(color: Colors.black54)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => setCurrentPage(0),
                icon: const Icon(Icons.settings),
              ),
              IconButton(
                onPressed: () => setCurrentPage(1),
                icon: const Icon(Icons.notes),
              ),
              IconButton(
                onPressed: () => setCurrentPage(2),
                icon: const Icon(Icons.star),
              ),
            ],
          ),
        ),
      ),
    );
  }

  setCurrentPage(int page) {
    setState(() {
      currentPage = page;currentPage = page;
    });
  }
}