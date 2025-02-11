import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Color Learn"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: ColorsItem.sulu,
            child: const Text("Color Learn"),
          ),
        ));
  }
}

class ColorsItem {
  // Or we can create a class to use OOP features.
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
