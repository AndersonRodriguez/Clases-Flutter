import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bottom Sheet',
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
  _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      // enableDrag: false,
      // backgroundColor: Colors.red,
      // barrierColor: Colors.green,
      builder: (context) => Container(
        height: 700.0,
        // color: Colors.red,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const Text(
              'Titulo',
              style: TextStyle(fontSize: 20.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showModalBottomSheet(context);
                },
                child: const Text('Show Bottom Sheet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
