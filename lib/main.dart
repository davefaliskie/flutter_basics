import 'package:flutter/material.dart';
import 'package:flutter_basics/colors.dart';
import 'package:flutter_basics/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '1ManStartup',
      theme: ThemeData(primarySwatch: primary, fontFamily: "Montserrat"),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final user = User(
    name: "1ManStartup",
    login: DateTime.now(),
    duration: const Duration(seconds: 483),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1ManStartup"),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.purple,
          ),
          const Spacer(flex: 3),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
