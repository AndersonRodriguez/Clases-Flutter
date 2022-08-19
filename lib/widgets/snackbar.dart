import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SnackBar',
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
  _showSnackBar() {
    final snackBar = SnackBar(
      content: Row(
        children: const [
          Icon(Icons.thumb_up),
          SizedBox(width: 10.0),
          Text('Compra Realizada'),
        ],
      ),
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 5),
      action: SnackBarAction(
        label: 'Label',
        onPressed: () {
          print('Di click');
        },
        textColor: Colors.white,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: _showSnackBar,
              child: const Text('Show Snack'),
            ),
          ],
        ),
      ),
    );
  }
}
