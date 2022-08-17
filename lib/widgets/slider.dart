import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slider',
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
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: Slider(
                value: rating,
                onChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
                // divisions: 4,
                min: 0,
                max: 100,
                label: '$rating',
                activeColor: Colors.green,
                thumbColor: Colors.red,
              ),
            ),
            Text('$rating'),
          ],
        ),
      ),
    );
  }
}
