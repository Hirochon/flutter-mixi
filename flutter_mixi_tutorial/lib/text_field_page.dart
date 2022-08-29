import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextFieldを使ってみよう")),
      body: const MyTextField(),
    );
  }
}

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputText = "";
  String showText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(onChanged: (value) {
              setState(() {
                inputText = value;
              });
            })),
        TextButton(
            onPressed: () {
              setState(() {
                showText = inputText;
              });
            },
            child: const Icon(Icons.arrow_circle_down_sharp)),
        Text(showText),
      ],
    );
  }
}
