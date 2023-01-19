import 'package:flutter/material.dart';
import 'package:loginapp/login.dart';
import 'package:loginapp/register.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: ' Poppins',
          primaryColor: Colors.purple,
          primarySwatch: Colors.purple),
      initialRoute: 'login',
      routes: {
        'login': (context) => const Mylogin(),
        'register': (context) => const MyRegister()
      },
    );
  }
}
