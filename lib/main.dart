import 'package:flutter/cupertino.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                // debugPrint("The box was clicked");
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text("The box was clicked"),
                      content: const Text("More context about the action"),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text("Okay"),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                        CupertinoDialogAction(
                          child: const Text("Done"),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Center(child: Text("Hello")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
