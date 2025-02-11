import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Learn"),
      ),
      body: Column(children: [
        TextButton(onPressed: () {}, child: const Text("Button 1")),
        ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            label: const Text("Button 5")),
        FilledButton(onPressed: () {}, child: const Text("Button 6")),
        InkWell(
          child: const Text("Button 7"),
          onTap: () {},
        ),
        Container(
          height: 200,
          color: Colors.white,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
          onPressed: () {},
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 10, top: 10, right: 40, left: 40),
            child: Text(
              "Place Bid",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ]),
    );
  }
}
