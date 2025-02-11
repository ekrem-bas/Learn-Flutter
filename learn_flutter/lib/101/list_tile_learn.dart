import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
        elevation: 1,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: const Text("My Card"),
                subtitle: const Text("How do you use your card?"),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          )
        ],
      ),
    );
  }
}
