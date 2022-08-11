import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [Text("Hoge"), Text("Fuga"), Text("Piyo")],
          // children: [for (var i = 0; i < 10; i++) const Text("ああああ")]
        ));
  }
}
