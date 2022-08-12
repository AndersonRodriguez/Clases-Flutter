import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DataTable',
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
  final List<String> columns = ['Moto', 'Modelo', 'Precio'];
  final List<String> motos = ['Suzuki', '2010', '80000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: Center(
        child: DataTable(
          columns:
              columns.map((item) => DataColumn(label: Text(item))).toList(),
          rows: [
            DataRow(
              cells: motos.map((item) => DataCell(Text(item))).toList(),
            ),
            const DataRow(cells: [
              DataCell(Text('Honda')),
              DataCell(Text('2020')),
              DataCell(Text('15000')),
            ])
          ],
        ),
      ),
    );
  }
}
