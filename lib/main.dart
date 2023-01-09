import 'package:flutter/material.dart';
import 'package:puzzel_game/screen/gamepage.dart';
import 'package:puzzel_game/screen/guessgame.dart';
import 'package:puzzel_game/screen/homepage.dart';
import 'package:puzzel_game/screen/levelpage.dart';
import 'package:puzzel_game/screen/scorepage.dart';

void main(){
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const homepage(),
        'levelPage': (context) => const levelpage(),
        'gamePage': (context) => const gamepage(),
        'scorePage': (context) => const scorePage(),
        'guessWhoPage': (context) => const guesswhopage(),
      },
    ),

  );
}