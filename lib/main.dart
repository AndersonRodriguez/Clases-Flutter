import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
        ),
        body: Center(
          child: Text(
            'Hola ' * 30,
            // textDirection: TextDirection.rtl,
            textAlign: TextAlign.justify,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.dotted,
              backgroundColor: Colors.yellow,
              letterSpacing: 1,
              wordSpacing: 1,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                  blurRadius: 3.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
