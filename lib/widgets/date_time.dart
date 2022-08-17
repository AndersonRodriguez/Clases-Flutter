import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Date Time',
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
  DateTime date1 = DateTime.now();
  TimeOfDay time1 = TimeOfDay.now();

  selectDate(BuildContext context) async {
    var picked = await showDatePicker(
      context: context,
      initialDate: date1,
      firstDate: DateTime(1960),
      lastDate: DateTime(2025),
      confirmText: 'Seleccionar',
      cancelText: 'Cancelar',
      selectableDayPredicate: (DateTime val) =>
          val.weekday == 5 || val.weekday == 6 ? false : true,
    );

    if (picked != null && picked != date1) {
      setState(() {
        date1 = picked;
      });
    }
  }

  selectHour(BuildContext context) async {
    var picked = await showTimePicker(
      context: context,
      initialTime: time1,
      cancelText: 'Cancelar',
      confirmText: 'Seleccionar',
    );

    if (picked != null && picked != time1) {
      setState(() {
        time1 = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Time'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Fecha: ${date1.year} - ${date1.month} - ${date1.day}',
                  style: const TextStyle(fontSize: 20.0),
                ),
                IconButton(
                  onPressed: () {
                    selectDate(context);
                  },
                  icon: const Icon(Icons.date_range),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Hora: ${time1.hour}:${time1.minute}',
                  style: const TextStyle(fontSize: 20.0),
                ),
                IconButton(
                  onPressed: () {
                    selectHour(context);
                  },
                  icon: const Icon(Icons.date_range),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
