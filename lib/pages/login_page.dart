// ignore_for_file: use_build_context_synchronously

import 'package:chatapp/components/my_alert.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';
import 'package:chatapp/services/auth/auth_services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final AuthServices _authServices = AuthServices();

  void login() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(
            color: Colors.grey.shade900,
          ),
        );
      },
    );
    try {
      await _authServices.signInWithEmailPassword(
          emailController.text, passwordController.text);
      emailController.clear();
      passwordController.clear();
      Navigator.pop(context);
    } catch (e) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (context) {
          return MyAlert(text: e.toString());
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message,
                size: 50,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Welcome you've been missed",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: emailController,
                text: "Email",
                obscure: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: passwordController,
                text: "Password",
                obscure: true,
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                text: "Login",
                onTap: () => login(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Register now",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
