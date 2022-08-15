import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("NEW PAGE")),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Volver"))
        ],
      ),
    );
  }
}