import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botones',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              RaisedButton(
                color: Colors.yellow,
                onPressed: () {},
                child: const Text('ElevateButton'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  print('ElevateButton');
                },
                child: const Text('ElevateButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
