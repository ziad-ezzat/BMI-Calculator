import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text(
                '+',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              child: const Text(
                '-',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
