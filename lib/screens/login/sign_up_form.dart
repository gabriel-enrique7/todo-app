import 'package:flutter/material.dart';
import 'package:todo_app/components/custom_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController _email;
  late TextEditingController _password;
  late TextEditingController _confirmPassword;

  @override
  void initState() {
    super.initState();

    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
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
          CustomTextField(
            controller: _confirmPassword,
            labelText: 'Confirmar senha',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(
              height: 45.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                  ),
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}