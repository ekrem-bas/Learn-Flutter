import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final _cardHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: _cardHeight / 2,
                  child: Image.network(
                    "https://picsum.photos/200/300",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  height: _cardHeight,
                  width: 200,
                  bottom: 0,
                  child: const Card(
                    color: Colors.white,
                    shape: StadiumBorder(),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
