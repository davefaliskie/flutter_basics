import 'package:flutter/material.dart';
import 'package:flutter_basics/colors.dart';
import 'package:flutter_basics/data.dart';
import 'package:flutter_basics/duration_format.dart';
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(usersList[index].name),
                subtitle: Text(
                  "Logged in for ${usersList[index].duration.secToTime()}",
                ),
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.person, size: 30),
                  ],
                ),
                trailing: const Icon(
                  Icons.star,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
