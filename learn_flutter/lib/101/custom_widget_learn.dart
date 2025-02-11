import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text("Custom Widget"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFootButton(
                    title: title,
                    padding: _PaddingUtility().normalPadding,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            CustomFootButton(
              title: title,
              padding: _PaddingUtility().normalPadding,
              onPressed: () {},
            ),
          ],
        ));
  }
}

class _PaddingUtility {
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 10);
  final EdgeInsets normalPadding = const EdgeInsets.all(8);
}

class CustomFootButton extends StatelessWidget {
  const CustomFootButton({
    super.key,
    required this.title,
    required this.padding,
    required this.onPressed,
  });
  final String title;
  final EdgeInsets padding;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: padding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
