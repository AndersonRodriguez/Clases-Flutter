import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Align',
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Container(
            height: 250,
            width: 250,
            color: Colors.grey,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.pink,
                child: const Center(
                  child: Text('Hola'),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
