// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:learn_flutter/product/counter_hello_button.dart';

class StatefulLearn extends StatefulWidget {
  // Data parts
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  // Logic parts
  int _countValue = 0;

  void _updateCounter(bool isIncremented) {
    if (isIncremented) {
      _countValue++;
      print("Value updated (+)");
    } else {
      if (_countValue > 0) {
        _countValue--;
        print("Value updated (-)");
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Learn"),
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Counter",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white),
          ),
          Center(
            child: Center(
              child: Text(
                _countValue.toString(),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
          const CounterHelloButton(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incrementButton(), _decrementButton()],
      ),
    );
  }

  Padding _decrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
          print("Pressed on DecrementButton");
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
        print("Pressed on IncrementButton");
      },
      child: const Icon(Icons.add),
    );
  }
}
