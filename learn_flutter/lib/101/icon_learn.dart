import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});

  // Define the IconSize class inside IconLearnView class
  final IconSizes iconSize = IconSizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Icon Learn"),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Theme.of(context)
                    .colorScheme
                    .background, // It changes the color of icon with the changes on theme
              )),
          IconButton(
            // Added icon button
            onPressed: () {}, // empty action
            icon: const Icon(Icons.message_outlined), // Icon for button
            iconSize: iconSize.iconSmall, // Icon size and ofc the button size
          )
        ],
      ),
    );
  }
}

class IconSizes {
  // Defined a class for small icon sizes
  final double iconSmall = 40;
}
