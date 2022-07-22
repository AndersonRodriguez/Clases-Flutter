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
          child: Container(
            // color: Colors.green,
            // color: const Color(0XAAFFAA11),
            // color: const Color.fromARGB(250, 255, 80, 12),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.red,
                width: 2.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(15.0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(6.0, 6.0),
                  blurRadius: 6.0,
                ),
                BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            transform: Matrix4.rotationZ(0.3),
            width: 100.0,
            height: 100.0,
            padding: const EdgeInsets.all(10.0),
            // margin: const EdgeInsets.fromLTRB(10, 15, 12, 18),
            // margin: const EdgeInsets.only(top: 20),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: const Center(
              child: Text('Hola'),
            ),
          ),
        ),
      ),
    );
  }
}
