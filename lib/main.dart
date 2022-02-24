import 'package:airplane_ticket/ui/pages/get_started_page.dart';
import 'package:airplane_ticket/ui/pages/sign_up_page.dart';
import 'package:airplane_ticket/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SpalshPage(),
        'get-started': (context) => GetStartedPage(),
        'sign-up': (context) => SignUpPage(),
      },
    );
  }
}
