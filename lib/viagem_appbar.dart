import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teste/paleta_cores.dart';
import 'package:teste/responsive.dart';

class ViagemAppbar extends StatelessWidget {
  const ViagemAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return ClipPath(
      clipper: ClipAppBar(),
      child: Container(
        decoration: BoxDecoration(
          gradient: PaletaCores.gradienteAppBar,
        ),
        width: double.infinity,
        height: responsive.dp(9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: responsive.dp(1.4)),
              child: Icon(
                FontAwesomeIcons.bars,
                size: responsive.dp(4.2),
                color: PaletaCores.whiteOpacity,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: responsive.dp(2.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Vólus',
                    style: TextStyle(
                      color: PaletaCores.whiteOpacity,
                      fontSize: responsive.dp(4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'viagem',
                    style: TextStyle(
                      color: PaletaCores.whiteOpacity,
                      fontSize: responsive.dp(2.2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    double rd = 50;

    var path = Path();

    path.lineTo(0, h - rd);

    path.quadraticBezierTo(0, h, 0, h);

    path.lineTo(w - rd, h);
    path.quadraticBezierTo(w, h, w, h - rd);
    path.lineTo(w, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
