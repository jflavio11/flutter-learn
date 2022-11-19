import 'package:app1/RandomWords.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1());
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first app",
      theme:
          ThemeData(primaryColor: Colors.black54, primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first flutter app"),
      ),
      body: const Center(
        child: RandomWords(),
      ),
    );
  }
}
