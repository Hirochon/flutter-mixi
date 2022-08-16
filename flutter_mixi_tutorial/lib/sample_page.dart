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
          children: [
            const Text("Hoge"),
            const Text("Fuga"),
            const Text("Piyo"),
            // // 1つ目
            // SizedBox(
            //   height: 400,
            //   child: GridView.count(
            //     crossAxisCount: 3,
            //     children: [
            //       for (var i = 0; i < 9; i++)
            //         const Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: ColoredBox(color: Colors.blue))
            //     ],
            //   ),
            // )

            // // 2つ目
            // Expanded(
            //   child: GridView.count(
            //     crossAxisCount: 3,
            //     children: [
            //       for (var i = 0; i < 9; i++)
            //         const Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: ColoredBox(color: Colors.pinkAccent))
            //     ],
            //   ),
            // )

            // 3つ目
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                for (var i = 0; i < 9; i++)
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ColoredBox(color: Colors.yellowAccent))
              ],
            )
          ],
        ));
  }
}
