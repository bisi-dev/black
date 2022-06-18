import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:black/screens/intro_screen.dart';
import 'package:black/screens/registration_screen.dart';
import 'package:black/screens/login_screen.dart';
import 'package:black/screens/room_screen.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BlackApp());
}

class BlackApp extends StatelessWidget {
  const BlackApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id: (context) => const IntroScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RoomScreen.id: (context) => const RoomScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}