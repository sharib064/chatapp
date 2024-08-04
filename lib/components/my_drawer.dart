import 'package:chatapp/pages/settings_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: const Icon(
                  Icons.message,
                  size: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListTile(
                  onTap: () => Navigator.pop(context),
                  leading: const Icon(Icons.home),
                  title: const Text("HOME"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                  },
                  leading: const Icon(Icons.settings),
                  title: const Text("SETTING"),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListTile(
              onTap: () => FirebaseAuth.instance.signOut(),
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
            ),
          )
        ],
      ),
    );
  }
}
