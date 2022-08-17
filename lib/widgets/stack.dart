import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Stack',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      // body: Stack(
      //   children: [
      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Container(
      //         color: Colors.teal,
      //         width: 100.0,
      //         height: 100.0,
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.topRight,
      //       child: Container(
      //         color: Colors.yellow,
      //         width: 100.0,
      //         height: 100.0,
      //       ),
      //     ),
      //     Positioned(
      //       top: 80,
      //       right: 60,
      //       child: Container(
      //         color: Colors.blue,
      //         width: 100.0,
      //         height: 100.0,
      //         child: Stack(
      //           children: [
      //             Align(
      //               alignment: Alignment.bottomCenter,
      //               child: Container(
      //                 color: Colors.black,
      //                 width: 26.0,
      //                 height: 26.0,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gato.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Gato'),
                    Text('asdasd'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
