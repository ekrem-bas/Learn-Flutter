import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column and Row"),
      ),
      body: Column(
        children: [
          Expanded(
              // % 30
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(color: Colors.red),
                  ),
                  Expanded(child: Container(color: Colors.greenAccent)),
                  Expanded(child: Container(color: Colors.orange)),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              )),
          Expanded(
            // % 20
            flex: 2,
            // % 20
            child: Container(color: Colors.teal),
          ),
          Expanded(
            // % 30
            flex: 3,
            // % 30
            child: Container(color: Colors.yellow),
          ),
          const Expanded(
            flex: 2,
            child: Row(
              // Set the alignment of properties in horizontal
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // Set the alignment of properties in vertical
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text("Text1"),
                Text("Text2"),
                Text("Text3"),
              ],
            ),
          ),
          const SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                  child: Text("Text 1"),
                ),
                Expanded(
                  child: Text("Text 2"),
                ),
                Expanded(
                  child: Text("Text 3"),
                ),
                Expanded(
                  child: Text("Text 4"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
