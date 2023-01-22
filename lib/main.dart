import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: ((settings) => generateRoute(
            settings,
          )),
      home: const AuthScreen(),
    );
  }
}
