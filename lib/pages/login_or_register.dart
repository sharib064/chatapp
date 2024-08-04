import 'package:chatapp/pages/login_page.dart';
import 'package:chatapp/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool tooglePages = true;
  void toogle() {
    setState(() {
      tooglePages = !tooglePages;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (tooglePages) {
      return LoginPage(
        onTap: () => toogle(),
      );
    } else {
      return RegisterPage(
        onTap: () => toogle(),
      );
    }
  }
}
