import 'package:flutter/material.dart';

import 'input.widget.dart';

class InputContainer extends StatelessWidget {
  var type = "email";

  InputContainer({@required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 60, right: 60),
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(type == "email" ? Icons.email : Icons.lock),
          SizedBox(
            width: 10,
          ),
          type == "email"
              ? Input(
                  inputType: TextInputType.emailAddress,
                  labelText: "E-mail",
                  obscureText: false,
                )
              : Input(
                  inputType: TextInputType.text,
                  labelText: "Senha",
                  obscureText: true,
                )
        ],
      ),
    );
  }
}
