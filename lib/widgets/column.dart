import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              verticalDirection: VerticalDirection.down,
              children: [
                const Text('Primero'),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                const Text(
                  'Segundo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Container(
                  width: 200,
                  height: 150,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
