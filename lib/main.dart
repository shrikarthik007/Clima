import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1d1e33),
      ),
      home: LoadingScreen(),
    );
  }
}
