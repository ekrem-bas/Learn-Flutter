import 'package:flutter/material.dart';
import 'package:learn_flutter/demos/color_demo_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(
                  () {
                    _backgroundColor = Colors.amberAccent;
                  },
                );
              },
              icon: const Icon(Icons.clear)),
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            child: ColorDemoView(
              initialColor: _backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
