import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}
