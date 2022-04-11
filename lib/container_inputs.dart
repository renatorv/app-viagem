import 'package:flutter/material.dart';
import 'package:teste/responsive.dart';

class ContainerInputs extends StatelessWidget {
  const ContainerInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return Column(
      children: [
        TextFormField(
          style: TextStyle(color: Colors.white, fontSize: responsive.dp(2.4)),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            filled: true,
            border: UnderlineInputBorder(),
            labelText: 'Login',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: responsive.dp(2.2),
              fontWeight: FontWeight.bold,
            ),
          ),
          cursorColor: Colors.white,
        ),
        TextFormField(
          style: TextStyle(color: Colors.white, fontSize: responsive.dp(2.4)),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            filled: true,
            border: UnderlineInputBorder(),
            labelText: 'Senha',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: responsive.dp(2.2),
              fontWeight: FontWeight.bold,
            ),
          ),
          cursorColor: Colors.white,
        ),
      ],
    );
  }
}
