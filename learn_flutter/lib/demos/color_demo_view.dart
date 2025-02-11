import 'package:flutter/material.dart';

class ColorDemoView extends StatefulWidget {
  const ColorDemoView({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemoView> createState() => _ColorDemoViewState();
}

class _ColorDemoViewState extends State<ColorDemoView> {
  final String title = "Color Demo View";
  Color? _backgroundColor;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  void _changeSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: _colorOnTap,
        currentIndex: _selectedIndex,
        selectedFontSize: _bottomNavBarFontSize,
        unselectedFontSize: _bottomNavBarFontSize,
        items: _bottomNavBarItems,
      ),
    );
  }

  List<BottomNavigationBarItem> get _bottomNavBarItems {
    return const [
      BottomNavigationBarItem(
        icon: _ColorContainer(containerColor: Colors.red),
        label: "Red",
      ),
      BottomNavigationBarItem(
          icon: _ColorContainer(containerColor: Colors.green), label: "Green"),
      BottomNavigationBarItem(
          icon: _ColorContainer(containerColor: Colors.blue), label: "Blue"),
    ];
  }

  double get _bottomNavBarFontSize => 18;

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      _changeSelectedIndex(value);
      _changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.green.index) {
      _changeSelectedIndex(value);
      _changeBackgroundColor(Colors.green);
    } else {
      _changeSelectedIndex(_MyColors.blue.index);
      _changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, green, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    required this.containerColor,
  });

  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: containerColor, shape: BoxShape.circle),
      width: 25,
      height: 25,
    );
  }
}
