import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var text = "Text";

  Button({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 60, right: 60),
      decoration: BoxDecoration(
          color: Color(0xFF0096FF),
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(-2.0, 5.0),
            )
          ]),
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {},
      ),
    );
  }
}
