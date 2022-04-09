import 'package:flutter/material.dart';
import 'package:teste/responsive.dart';

class ContainerViagem extends StatelessWidget {
  const ContainerViagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Vólus',
          style: TextStyle(
            fontSize: responsive.dp(8),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'viagem',
          style: TextStyle(
            fontSize: responsive.dp(3.5),
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
