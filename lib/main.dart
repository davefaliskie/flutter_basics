import 'package:flutter/material.dart';
import 'package:flutter_basics/colors.dart';
import 'package:flutter_basics/date_time_format.dart';
import 'package:flutter_basics/duration_format.dart';
import 'package:flutter_basics/string_extension.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              user.name.capitalize(),
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
            ),
            Text(
              "Logged in at: ${user.login.fullDate()}",
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
            ),
            Text(
              "For ${user.duration.secToTime()} time",
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("Person as Json: ${user.toJson()}");
              },
              child: const Text("Convert to Json"),
            ),
          ],
        ),
      ),
    );
  }
}
