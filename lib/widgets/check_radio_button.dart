import 'package:flutter/material.dart';
import 'package:flutter_group_button/flutter_group_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Check Radio Button',
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
        title: const Text('Check Radio Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text(
              'Seleccione:',
              style: TextStyle(fontSize: 20.0),
            ),
            CheckboxGroup(
              activeColor: Colors.green,
              checkColor: Colors.pink,
              textBeforeCheckbox: false,
              groupItemsAlignment: GroupItemsAlignment.row,
              child: {
                const Text('Opcion 1'): true,
                const Text('Opcion 2'): false,
                const Text('Opcion 3'): false,
              },
              onNewChecked: (value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            RadioGroup(
              activeColor: Colors.pink,
              groupItemsAlignment: GroupItemsAlignment.column,
              priority: RadioPriority.textBeforeRadio,
              defaultSelectedItem: 0,
              onSelectionChanged: (selection) {
                print(selection);
              },
              children: const [
                Text('Opcion 1'),
                Text('Opcion 2'),
                Text('Opcion 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
