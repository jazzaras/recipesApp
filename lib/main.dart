import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// here we added themimg to our app...
    /// theming for app color and app bar

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 215, 97),
            primary: Colors.black),
        appBarTheme: AppBarTheme(color: Colors.transparent),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
