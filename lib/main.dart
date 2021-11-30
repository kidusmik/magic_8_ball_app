import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.red,
        ),
        body: const MagicEightPage(),
      ),
    ),
  );
}

class MagicEightPage extends StatefulWidget {
  const MagicEightPage({Key? key}) : super(key: key);

  @override
  _MagicEightPageState createState() => _MagicEightPageState();
}

class _MagicEightPageState extends State<MagicEightPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballNumber.png')),
          ),
        ],
      ),
    );
  }
}
