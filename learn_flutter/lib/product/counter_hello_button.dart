import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counter = 0;
  final String _welcomeTitle = "Merhaba";
  void _updateCounter() {
    _counter++;
    setState(() {});
    // ignore: avoid_print
    print("Pressed on CounterHelloButton");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCounter, child: Text("$_welcomeTitle $_counter"));
  }
}
