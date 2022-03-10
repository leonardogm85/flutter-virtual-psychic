import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const VirtualPsychicApp());

class VirtualPsychicApp extends StatelessWidget {
  const VirtualPsychicApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff332B25),
        appBar: AppBar(
          backgroundColor: Colors.brown.shade800,
          title: const Text('Virtual Psychic'),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final Random _random = Random();

  int _imageNumber = 1;

  void _onPressed() {
    setState(() {
      _imageNumber = _random.nextInt(5) + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: _onPressed,
        child: Image.asset('assets/images/psychic$_imageNumber.png'),
      ),
    );
  }
}
