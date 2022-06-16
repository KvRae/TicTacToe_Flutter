import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness:  Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF00061a),
        shadowColor:  const Color(0xFFEAE110),
        splashColor: const Color(0xFFF1D485),
      ),
      home: const HomePage(),
    );
  }
}



