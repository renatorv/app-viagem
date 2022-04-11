import 'package:flutter/material.dart';
import 'package:teste/container_click.dart';
import 'package:teste/container_inputs.dart';
import 'package:teste/container_new.dart';
import 'package:teste/container_viagem.dart';
import 'package:teste/paleta_cores.dart';
import 'package:teste/responsive.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: PaletaCores.colorBackground, // Colors.grey,
            width: responsive.width,
            height: responsive.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: responsive.width,
                    height: responsive.height * .72,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.45),
                          BlendMode.dstATop,
                        ),
                        image: AssetImage('assets/viagem.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                          bottom: 0,
                          right: 20,
                          child: Text('Texto'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: PaletaCores.colorBackground, // Colors.grey,
                  width: responsive.width,
                  height: responsive.height * .28,
                ),
              ],
            ),
          ),
          Positioned(
            top: responsive.hp(54),
            left: responsive.wp(3),
            right: responsive.wp(3),
            child: ContainerClick(),
          ),
          Positioned(
            top: responsive.hp(9),
            right: responsive.wp(10),
            child: ContainerViagem(),
          ),
          Positioned(
            bottom: responsive.hp(3),
            left: responsive.wp(12),
            right: responsive.wp(12),
            child: ContainerNew(),
          ),
          Positioned(
            bottom: responsive.hp(52),
            left: responsive.wp(12),
            right: responsive.wp(12),
            child: ContainerInputs(),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();

    p.lineTo(0, size.height);
    p.lineTo(size.width * 3.4, 0);

    p.close();

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height); //posição de x= 0  e y = o valor máximo

    path.lineTo(size.width * 3, 0); //posição de x= o valor máximo e y = 0
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
