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

  Color backGroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
    };
    if (states.any((interactiveStates.contains))) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 150,
              width: 200,
              child: ColoredBox(
                color: Colors.amber,
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    debugPrint("ListViewの中");
                    return Text(index.toString());
                  },
                ),
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              TextButton(
                onPressed: _decrementCounter,
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith(backGroundColor)),
                child: const Text(
                  "ここはここ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
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
