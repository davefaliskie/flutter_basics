import 'package:flutter/material.dart';
import 'package:flutter_basics/colors.dart';

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
      theme: ThemeData(
        primarySwatch: primary,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1ManStartup"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.green,
              height: 200,
              width: 200,
            ),
            Container(
              color: primary,
              height: 125,
              width: 125,
            ),
            Image.asset(
              "assets/images/rocket.png",
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
