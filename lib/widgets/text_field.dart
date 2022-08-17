import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TextField',
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
  String name = '';
  final TextEditingController _controllerName =
      TextEditingController(text: 'Anderson Rodriguez');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: ListView(
        children: [
          const Text(
            'Agregar la información',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 220.0,
              child: TextField(
                keyboardType: TextInputType.name,
                // autocorrect: true,
                maxLength: 20,
                // obscureText: true,
                cursorColor: Colors.pink,
                style: const TextStyle(fontSize: 18.0, color: Colors.blue),
                textInputAction: TextInputAction.search,
                decoration: const InputDecoration(
                  errorText: 'Requerido',
                  icon: Icon(Icons.person),
                  hintText: 'Escribe tu direccion',
                  labelText: 'Direccion',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                ),
                // enabled: false,
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                onSubmitted: (value) {
                  print(value);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(name),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 220.0,
              child: TextField(
                controller: _controllerName,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(_controllerName.text),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              print(name);
              print(_controllerName.text);
              setState(() {});
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
