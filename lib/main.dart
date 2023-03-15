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
        child: Text(
          "Subscribe!",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => debugPrint("Go Home"),
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () => debugPrint("Go to Settings"),
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
