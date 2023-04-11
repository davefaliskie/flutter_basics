import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool unsavedChanges = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: BackButton(onPressed: () {
          if (unsavedChanges == true) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Are you sure?"),
                  actions: [
                    TextButton(
                      child: const Text("No"),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    TextButton(
                      child: const Text("Yes"),
                      onPressed: () => Navigator.of(context).popUntil(
                        ModalRoute.withName('/'),
                      ),
                    ),
                  ],
                );
              },
            );
          } else {
            Navigator.of(context).pop();
          }
        }),
      ),
      body: Container(
        color: Colors.blue[300],
      ),
    );
  }
}
