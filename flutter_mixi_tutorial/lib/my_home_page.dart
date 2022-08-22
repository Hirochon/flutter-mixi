import 'package:flutter/material.dart';
import 'package:flutter_mixi_tutorial/multiple.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              FloatingActionButton(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.lime,
                  onPressed: _decrementCounter,
                  tooltip: 'りんご',
                  child: const Icon(Icons.female)),
              FloatingActionButton(
                backgroundColor: Colors.pink,
                onPressed: _incrementCounter,
                tooltip: 'Flutter',
                child: const Icon(Icons.male_outlined),
              )
            ]),
            const Multiple()
          ],
        ),
      ),
    );
  }
}
