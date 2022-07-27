import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              width: 320,
              height: 320,
              // Imagenes de la aplicación
              // child: Image.asset('assets/gato.jpg'),
              // Imagen de internet
              child: Image.network(
                'https://cdn.pixabay.com/photo/2022/07/11/18/01/woman-7315671_960_720.jpg',
                fit: BoxFit.contain,
                // scale: 5.0,
                alignment: Alignment.center,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
