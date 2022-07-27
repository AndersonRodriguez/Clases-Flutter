import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
      color: Colors.red,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );

    return MaterialApp(
      title: 'Row',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                const Text(
                  'Uno',
                  style: style,
                ),
                Text(
                  'Dos',
                  style: style.copyWith(fontSize: 16),
                ),
                Text(
                  'Tres',
                  style: style.copyWith(color: Colors.blue, fontSize: 35),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
