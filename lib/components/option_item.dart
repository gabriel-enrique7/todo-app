import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const OptionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap
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
          leading: Icon(icon),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14.0
            ),
          ),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => onTap(),
        ),
      ),
    );
  }
}