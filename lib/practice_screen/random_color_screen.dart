import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorScreen extends StatefulWidget {
  const RandomColorScreen({Key? key}) : super(key: key);

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {
  // int _counter = 0;
  dynamic colorlist = 0xffffffff;
  void generateColor() {
    colorlist = Random().nextInt(0xffffffff);
    setState(() {
      colorlist++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: colorlist,
      // backgroundColor:  Color[context],
      appBar: AppBar(),
      body: Container(
        color: Color(colorlist),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: generateColor,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
