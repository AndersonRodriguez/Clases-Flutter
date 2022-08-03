import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Icon',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Icon(
              Icons.account_balance,
              size: 80,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
