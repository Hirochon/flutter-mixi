import 'package:flutter/material.dart';

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  State<Multiple> createState() => _Multiple();
}

class _Multiple extends State<Multiple> {
  int _counter = 1;

  void _multipleCounter() {
    setState(() {
      _counter *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('$_counter', style: Theme.of(context).textTheme.headline4),
      FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: _multipleCounter,
        tooltip: 'mpを10消費する',
        child: const Icon(Icons.ten_mp_sharp),
      )
    ]);
  }
}
