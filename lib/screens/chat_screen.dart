import 'package:flutter/material.dart';

/// Chat ekranı (placeholder)
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Chat Screen',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

