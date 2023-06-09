import 'package:flutter/material.dart';
import 'package:todo_app/components/custom_text_field.dart';
import 'package:todo_app/screens/navigation.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();

    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Column(
        children: [
          CustomTextField(
            controller: _email,
            labelText: 'E-mail',
          ),
          CustomTextField(
            controller: _password,
            labelText: 'Senha',
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Esqueceu a senha?",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey.shade700
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
              height: 45.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 0.0),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const NavigationScreen()),
                      (route) => false
                    );
                  },
                  child: const Text('Login'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey.shade400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text("OU", style: TextStyle(color: Colors.grey.shade700)),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/google_icon.png',
            height: 48.0,
          ),
        ],
      ),
    );
  }
}
