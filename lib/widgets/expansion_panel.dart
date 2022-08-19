import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expansion Panel',
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
  final List<MyItem> _items = [
    MyItem(isExpanded: true, header: 'Header 1', body: 'Body 1'),
    MyItem(isExpanded: false, header: 'Header 2', body: 'Body 2'),
    MyItem(isExpanded: false, header: 'Header 3', body: 'Body 3'),
    MyItem(isExpanded: false, header: 'Header 4', body: 'Body 4'),
    MyItem(isExpanded: false, header: 'Header 5', body: 'Body 5'),
    MyItem(isExpanded: false, header: 'Header 6', body: 'Body 6'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Panelt'),
      ),
      body: ListView(
        children: [
          ExpansionPanelList(
            // dividerColor: Colors.red,
            expandedHeaderPadding: const EdgeInsets.all(8.0),
            expansionCallback: (index, isExpanded) {
              setState(() {
                _items[index].isExpanded = !_items[index].isExpanded;
              });
            },
            children: _items
                .map(
                  (MyItem item) => ExpansionPanel(
                    // backgroundColor: Colors.green,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) => Text(isExpanded
                        ? item.header!
                        : 'Sin Expandir ${item.header!}'),
                    body: Text(item.body!),
                    isExpanded: item.isExpanded,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}

class MyItem {
  bool isExpanded;
  String? header, body;

  MyItem({required this.isExpanded, this.body, this.header});
}
