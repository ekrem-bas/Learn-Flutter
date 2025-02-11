import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Layout"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 25,
          ),
          Positioned(
              bottom: 0,
              height: 100,
              width: 100,
              child: Container(
                color: Colors.green,
              )),
          Positioned.fill(
              left: 50,
              bottom: 50,
              top: 25,
              child: Container(
                color: Colors.greenAccent,
              ))
        ],
      ),
    );
  }
}
