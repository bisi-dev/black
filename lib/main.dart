import 'package:flutter/material.dart';
import 'package:black/screens/intro_screen.dart';

void main (){
  runApp(const BlackApp());
}

class BlackApp extends StatelessWidget {
  const BlackApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
      },
    );
  }
}