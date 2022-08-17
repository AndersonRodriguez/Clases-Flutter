import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Switch',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool _value = false;

  void _onChange(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Switch(
              activeColor: Colors.green,
              activeTrackColor: Colors.yellow,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.pink,
              value: _value,
              onChanged: _onChange,
            ),
            Text('Valor: $_value'),
          ],
        ),
      ),
    );
  }
}
