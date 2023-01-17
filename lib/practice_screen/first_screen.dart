import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  final String? screenName;
  final String? one;
  final String? two;
  final String? three;
  const FirstScreen({
    Key? key,
    this.screenName,
    this.one,
    this.two,
    this.three,
  }) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.screenName ?? "First"),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
