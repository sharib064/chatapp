import 'package:chatapp/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrent;
  const ChatBubble({super.key, required this.isCurrent, required this.message});

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).isDark();
    return Container(
      decoration: BoxDecoration(
        color: isCurrent
            ? (isDark ? Colors.green.shade600 : Colors.green.shade500)
            : (isDark ? Colors.grey.shade800 : Colors.grey.shade200),
        borderRadius: isCurrent
            ? const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(4),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))
            : const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        message,
        style: TextStyle(
            color: isCurrent
                ? Colors.white
                : (isDark ? Colors.white : Colors.black)),
      ),
    );
  }
}
