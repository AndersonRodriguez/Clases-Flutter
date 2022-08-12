import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tab Bar',
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
        title: const Text('Tab Bar'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: const [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.red,
              indicatorColor: Colors.amber,
              labelStyle: TextStyle(
                fontSize: 20,
              ),
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Alarm'),
                Tab(text: 'Business'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Screen1(),
                  Screen2(),
                  Screen3(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home'),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Alarm'),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Business'),
    );
  }
}
