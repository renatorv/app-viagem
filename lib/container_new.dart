import 'package:flutter/material.dart';
import 'package:teste/responsive.dart';

class ContainerNew extends StatelessWidget {
  const ContainerNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return SizedBox(
      width: responsive.dp(30),
      height: responsive.dp(6),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Novo Cadastro',
          style: TextStyle(
            fontSize: responsive.dp(2.3),
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: Color(0xff469087),
        ),
      ),
    );
  }
}
