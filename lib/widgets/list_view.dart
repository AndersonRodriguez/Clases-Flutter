import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListView',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  static const List<String> names = [
    'Anderson',
    'Pedro',
    'Juan',
    'Pepe',
    'Jaime',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50.0,
            child: Center(
              child: Text('Nombre: ${names[index]}'),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: index == 2 ? Colors.blue : Colors.red,
          height: 2.0,
          thickness: 2.0,
        ),
      ),
      // body: ListView(
      //   children: const [
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     Image(
      //       image: AssetImage('assets/gato.jpg'),
      //       height: 300,
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('Title'),
      //       subtitle: Text('Subtitle'),
      //       trailing: Icon(Icons.shopping_cart),
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: entries.length,
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 50.0,
      //       width: 500.0,
      //       color: Colors.amber[colorCodes[index]],
      //       child: Center(
      //         child: Text('Entradas: ${entries[index]}'),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
