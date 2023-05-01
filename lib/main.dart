import 'package:flutter/material.dart';
import 'package:flutter_basics/colors.dart';
import 'package:flutter_basics/profile_screen.dart';
import 'package:lottie/lottie.dart';

void main() async {
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
      routes: {
        '/': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final bool subscribed = false;

  @override
  Widget build(BuildContext context) {
    testList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("1ManStartup"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (subscribed == false) ...[
              Lottie.network(
                "https://assets5.lottiefiles.com/packages/lf20_zp3rcqsg.json",
              ),
            ] else ...[
              Lottie.network(
                "https://assets4.lottiefiles.com/packages/lf20_5s1rumi5.json",
              ),
            ]
          ],
        ),
      ),
    );
  }
}

final languages = [
  "English",
  "Spanish",
  "French",
  "Italian",
  "Chinese",
];

void testList() {
  for (var language in languages) {
    debugPrint(language);
  }
}
