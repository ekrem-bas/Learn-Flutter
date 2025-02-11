// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold Basics"),
        titleTextStyle: const TextStyle(fontSize: 24),
      ),
      body: const Text("Hello"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // When pressed on button it pop-ups a Container
            context: context,
            builder: (context) => Container(
              height: 400,
              child: const Column(
                children: [
                  Center(
                    child: Text("Hello my Container"),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: "First Bar Item"),
        BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: "Second Bar Item"),
      ]),
    );
  }
}
