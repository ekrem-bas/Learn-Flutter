import 'package:flutter/material.dart';
import 'package:learn_flutter/101/icon_learn.dart';
import 'package:learn_flutter/101/stack_learn.dart';
import 'package:learn_flutter/101/text_learn_view.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);

  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 400), curve: Curves.linear);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text("Page View"),
      ),
      body: PageView(
        onPageChanged: _updatePageIndex,
        padEnds: false,
        controller: _pageController,
        children: [IconLearnView(), const TextLearnView(), const StackLearn()],
      ),
    );
  }
}
