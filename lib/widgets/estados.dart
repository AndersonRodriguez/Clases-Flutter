import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estados',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SinEstado(),
              ConEstado(),
            ],
          ),
        ),
      ),
    );
  }
}

class SinEstado extends StatelessWidget {
  const SinEstado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(20.0),
      child: const Center(
        child: Text('Sin Estado'),
      ),
    );
  }
}

class ConEstado extends StatefulWidget {
  const ConEstado({Key? key}) : super(key: key);

  @override
  State<ConEstado> createState() => _ConEstadoState();
}

class _ConEstadoState extends State<ConEstado> {
  bool? _activo;

  @override
  void initState() {
    super.initState();
    _activo = false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _activo = !_activo!;
        });
      },
      child: Container(
        color: _activo! ? Colors.blue : Colors.green,
        padding: const EdgeInsets.all(20.0),
        child: const Center(
          child: Text('Con Estado'),
        ),
      ),
    );
  }
}
