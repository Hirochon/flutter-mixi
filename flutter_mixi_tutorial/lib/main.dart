import 'package:flutter/material.dart';
import 'package:flutter_mixi_tutorial/text_field_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: const TextFieldPage(),
    );
  }
}

class Sample extends StatelessWidget {
  const Sample({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child:
          ColoredBox(color: Theme.of(context).primaryColor, child: Text(title)),
    );
  }
}
