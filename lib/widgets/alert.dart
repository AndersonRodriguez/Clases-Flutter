import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Alert',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  showAlert(context, msj: 'Eliminado');
                },
                child: const Text('Show Alert'),
              ),
              ElevatedButton(
                onPressed: () {
                  showAlertCupertino(context);
                },
                child: const Text('Show Alert Cupertino'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showAlert(BuildContext context, {String? msj}) {
  var alertDialog = AlertDialog(
    title: const Text('Titulo de la alerta'),
    content:
        msj != null ? Text(msj) : const Text('Este es el contenido del alert'),
    // backgroundColor: Colors.amber,
    // alignment: Alignment.topCenter,
    // elevation: 11,
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('No'),
      ),
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Si'),
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (context) => alertDialog,
  );
}

void showAlertCupertino(BuildContext context) {
  var cupertinoAlert = CupertinoAlertDialog(
    title: const Text('Titulo de la alerta'),
    content: const Text('Este es el contenido del alert'),
    actions: [
      CupertinoButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('No'),
      ),
      CupertinoButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Si'),
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) => cupertinoAlert,
  );
}
