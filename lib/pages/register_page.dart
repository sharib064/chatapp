// ignore_for_file: use_build_context_synchronously

import 'package:chatapp/components/my_alert.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';
import 'package:chatapp/services/auth/auth_services.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final AuthServices _authServices = AuthServices();
  void register() async {
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

    if (confirmPasswordController.text == passwordController.text) {
      try {
        await _authServices.signUpWithEmailPassword(
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
    } else {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (context) {
          return const MyAlert(text: "Password not match");
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
                "Let's create an account with us",
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
              MyTextfield(
                controller: confirmPasswordController,
                text: "Confirm password",
                obscure: true,
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                text: "Register",
                onTap: () => register(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already a member? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Login now",
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
