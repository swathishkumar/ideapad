//import 'package:essay/view/Homepage/homepage.dart';
import 'package:essay/view/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Ideapad());
}

class Ideapad extends StatelessWidget {
  const Ideapad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
