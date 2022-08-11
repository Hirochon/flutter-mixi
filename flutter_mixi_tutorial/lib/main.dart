import 'package:flutter_mixi_tutorial/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // OSのテーマ設定に合わせて変更できる
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'Nora Demo Home Page'),
    );
  }
}

// 標準でThemeData.light()とか用意してくれてる
// 色かえたかたら下記みたいにかえる！
final lightTheme = ThemeData.from(
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
    onPrimary: Colors.amber,
    secondary: Colors.redAccent,
  ),
);

final darkTheme = ThemeData.from(
  colorScheme: const ColorScheme.dark(
    primary: Colors.blue,
    onPrimary: Colors.white,
    secondary: Colors.blueAccent,
  ),
);
