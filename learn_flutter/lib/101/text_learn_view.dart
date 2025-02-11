import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = "Veli";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome $name",
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            "Welcome",
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: ProjectColors.welcomeColor,
                ),
          ),
        ],
      ),
    ));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    color: Colors.lime,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}


