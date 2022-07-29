import 'package:flutter/material.dart';
import 'homepage.dart';
import 'listpage.dart';
import 'newassignment.dart';
import 'register.dart';
import 'registerconcluded.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lovepeople',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(169, 1, 247, 1),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/regis': (context) => const Register(),
        '/list': (context) => const ListPage(),
        '/new': (context) => const NewAssignment(),
        '/concluded': (context) => const RegisterConcluded(),
      },
      initialRoute: '/',
    );
  }
}
