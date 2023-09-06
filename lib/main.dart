import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HopePage(),
    );
  }
}

class HopePage extends StatelessWidget {
  const HopePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginScreen(),
    );
  }
}
