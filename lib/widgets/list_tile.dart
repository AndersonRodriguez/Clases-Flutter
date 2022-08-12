import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListTile',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Main title'),
            subtitle: const Text('Subtitle'),
            trailing: const Icon(Icons.shopping_cart),
            dense: true,
            selected: isActive,
            onTap: () {
              print('OnTab');
            },
            onLongPress: () {
              print('onLongPress');
            },
          ),
          const ListTile(
            title: Text('Main title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.shopping_cart),
          ),
          const ListTile(
            title: Text('Main title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
