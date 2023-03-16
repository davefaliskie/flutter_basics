import 'package:flutter/material.dart';
import 'package:flutter_basics/colors.dart';
import 'package:flutter_basics/user.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login Below",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SocialLoginButton(
              onPressed: () => debugPrint("Handle Google Login"),
              buttonType: SocialLoginButtonType.google,
              borderRadius: 55,
            ),
            SocialLoginButton(
              onPressed: () => debugPrint("Handle Apple Login"),
              buttonType: SocialLoginButtonType.appleBlack,
              borderRadius: 55,
            ),
            SocialLoginButton(
              onPressed: () => debugPrint("Handle Twitter Login"),
              buttonType: SocialLoginButtonType.twitter,
              borderRadius: 55,
            ),
            SocialLoginButton(
              onPressed: () => debugPrint("Handle Facebook Login"),
              buttonType: SocialLoginButtonType.facebook,
              borderRadius: 55,
            ),
            SocialLoginButton(
              onPressed: () => debugPrint("Handle GitHub Login"),
              buttonType: SocialLoginButtonType.github,
              borderRadius: 55,
            ),
            SocialLoginButton(
              onPressed: () => debugPrint("Handle Microsoft Login"),
              buttonType: SocialLoginButtonType.microsoft,
              borderRadius: 55,
            )
          ],
        ),
      ),
    );
  }
}
