import 'package:eshop/widgets/button.widget.dart';
import 'package:eshop/widgets/input-container.widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1],
            colors: [
              Color(0xFF1c618c),
              Color(0xFF2A1249),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(60),
              child: Image.network('http://placehold.it/400x100'),
            ),
            InputContainer(type: "email"),
            InputContainer(type: "senha"),
            SizedBox(
              height: 40,
            ),
            Button(text: "Login"),
          ],
        ),
      ),
    );
  }
}
