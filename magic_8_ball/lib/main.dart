import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallFace(),
    ),
  );
}

class BallFace extends StatefulWidget {
  const BallFace({super.key});

  @override
  State<BallFace> createState() => _BallFaceState();
}

class _BallFaceState extends State<BallFace> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Ask Me Anything!'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
              if (kDebugMode) {
                print('Ball num: $ballNum');
              }
            });
          },
          child: Image.asset(
            'images/ball$ballNum.png',
          ),
        ),
      ),
    );
  }
}
