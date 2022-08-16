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
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/certificates/Flutter.jpg',
                  height: 200),
              Column(
                children: [
                  Text(
                    "Nombre",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    "Entidad",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "ID Credencial",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "Fecha",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "View in site",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
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
