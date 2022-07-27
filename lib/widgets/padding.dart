import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Padding',
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            // padding: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Padding',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
