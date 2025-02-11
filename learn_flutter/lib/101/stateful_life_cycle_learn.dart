// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;
  @override
  void initState() {
    // first this will be executed
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print("a");
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.message != _message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  @override
  void didChangeDependencies() {
    // this will be executed after initState
    super.didChangeDependencies();
    print("c");
  }

  @override
  void dispose() {
    // this will be executed when user out of the current page
    super.dispose();
    print("Page Changed");
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Tek";
    } else {
      _message += " Çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _isOdd ? const Text("Kelime Tek") : const Text("Kelime Çift"),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(
                onPressed: () {
                  setState(() {
                    _message = "Changed Version";
                  });
                },
                child: Text(_message)));
  }
}
