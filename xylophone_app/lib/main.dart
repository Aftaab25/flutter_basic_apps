import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneName());
}

class XylophoneName extends StatelessWidget {
  const XylophoneName({super.key});

  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$noteNum.wav'),
    );
  }

  Expanded coloredButton({required int noteNum, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNum);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        child: const Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              coloredButton(noteNum: 1, color: Colors.red),
              coloredButton(noteNum: 2, color: Colors.orange),
              coloredButton(noteNum: 3, color: Colors.yellow),
              coloredButton(noteNum: 4, color: Colors.green),
              coloredButton(noteNum: 5, color: Colors.teal),
              coloredButton(noteNum: 6, color: Colors.blue),
              coloredButton(noteNum: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
