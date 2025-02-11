import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("Card Learn"),
      ),
      body: Column(children: [
        Card(
          margin: ProjectMargins.cardMargin,
          color: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(child: Text("Demo Text")),
          ),
        ),
        const Card(
          child: SizedBox(
            height: 100,
            width: 100,
          ),
        ),
        _CustomCard(
            child: const SizedBox(
          height: 100,
          width: 100,
        ))
      ]),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
