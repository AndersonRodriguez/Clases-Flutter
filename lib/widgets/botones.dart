import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List city = ['Bogotá', 'Cali', 'Funza'];
  String valueSelected = 'Cali';
  @override
  Widget build(BuildContext context) {
    void choiceAction(choice) {
      if (choice == Item.inbox) {
        print('Go to Inbox');
      } else if (choice == Item.email) {
        print('Go to Email');
      }
      if (choice == Item.singOut) {
        print('Go to SingOut');
      }
    }

    return MaterialApp(
      title: 'Botones',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Butones'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) => Item.choices
                  .map(
                    (choice) => PopupMenuItem(
                      value: choice,
                      child: Text(choice),
                    ),
                  )
                  .toList(),
              onSelected: choiceAction,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Agregar',
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  // style: ButtonStyle(
                  //   backgroundColor:
                  //       MaterialStateProperty.all<Color>(Colors.green),
                  // ),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.red,
                  //   onPrimary: Colors.green,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  // ),
                  onPressed: () {
                    print('ElevateButton');
                  },
                  child: const Text('ElevateButton'),
                  // child: Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: const [
                  //     Icon(Icons.add),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     Text('ElevateButton'),
                  //   ],
                  // ),
                ),
                ElevatedButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.add),
                  label: const Text('ElevatedButton.icon'),
                ),
                TextButton(
                  // style: ButtonStyle(
                  //   backgroundColor:
                  //       MaterialStateProperty.all<Color>(Colors.yellow),
                  //   foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  // ),
                  onPressed: () => {},
                  child: const Text('TextButton'),
                ),
                OutlinedButton(
                  // style: OutlinedButton.styleFrom(
                  //   primary: Colors.amber,
                  //   textStyle: const TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  onPressed: () => {},
                  child: const Text('OutlinedButton'),
                ),
                OutlinedButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.add),
                  label: const Text('OutlinedButton.icon'),
                ),
                IconButton(
                  color: Colors.red,
                  tooltip: 'IconButton',
                  onPressed: () => {},
                  icon: const Icon(Icons.add),
                ),
                ButtonBar(
                  // alignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () => {},
                      child: const Text('OutlinedButton'),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: const Text('OutlinedButton'),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: const Text('OutlinedButton'),
                    ),
                  ],
                ),
                DropdownButton(
                  value: valueSelected,
                  items: city.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      valueSelected = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Item {
  static const inbox = 'Inbox';
  static const email = 'Email';
  static const singOut = 'SingOut';

  static const List choices = [inbox, email, singOut];
}
