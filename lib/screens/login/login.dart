import 'package:flutter/material.dart';
import 'package:todo_app/screens/login/login_form.dart';
import 'package:todo_app/screens/login/sign_up_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                labelColor: Colors.black,
                overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                tabs: const [
                  Tab(text: 'Login'),
                  Tab(text: 'Sign Up')
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  LoginForm(),
                  SignUpForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}