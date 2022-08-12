import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Hero(
          tag: 'imageHero',
          child: Image(
            image: AssetImage('assets/gato.jpg'),
            height: 120.0,
            width: 120.0,
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda'),
      ),
      body: const Hero(
        tag: 'imageHero',
        child: Image(
          image: AssetImage('assets/gato.jpg'),
          height: 400.0,
          width: 400.0,
        ),
      ),
    );
  }
}
