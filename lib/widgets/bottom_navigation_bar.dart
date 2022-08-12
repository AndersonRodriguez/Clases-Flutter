import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bottom Navigation Bar',
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
  int _selectedIndex = 1;

  static const List<Widget> _widgetBody = [
    Text('Body 0'),
    Text('Body 1'),
    Text('Body 2'),
    // Text('Body 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
      ),
      body: SafeArea(
        child: Center(
          child: _widgetBody.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        iconSize: 30.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.yellow,
        unselectedFontSize: 10.0,
        // selectedIconTheme: const IconThemeData(
        //   color: Colors.black,
        //   opacity: 1,
        //   size: 30.0,
        // ),
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_sharp),
            label: 'Business',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Business',
          //   backgroundColor: Colors.blue,
          // ),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
