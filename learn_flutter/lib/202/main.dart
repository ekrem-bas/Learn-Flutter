import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/demos/color_life_cycle_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            progressIndicatorTheme:
                const ProgressIndicatorThemeData(color: Colors.white),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              titleTextStyle: TextStyle(fontSize: 18),
              systemOverlayStyle: SystemUiOverlayStyle.light,
            ),
            inputDecorationTheme: const InputDecorationTheme(
              labelStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            )),
        debugShowCheckedModeBanner: false,
        home: const ColorLifeCycleView());
  }
}
