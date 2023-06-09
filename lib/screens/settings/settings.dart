import 'package:flutter/material.dart';
import 'package:todo_app/components/option_item.dart';
import 'package:todo_app/screens/login/login.dart';
import 'package:todo_app/screens/settings/profile_settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: [
            OptionItem(
              icon: Icons.person,
              title: 'Atualização cadastral',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen(),
                  )
                );
              }
            ),
            OptionItem(
              icon: Icons.logout,
              title: 'Sair',
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (route) => false
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}