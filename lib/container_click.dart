import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste/body_app.dart';
import 'package:teste/paleta_cores.dart';
import 'package:teste/principal.dart';
import 'package:teste/responsive.dart';

class ContainerClick extends StatelessWidget {
  const ContainerClick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return ClipPath(
      clipper: ClickClipper(),
      child: Container(
        height: responsive.dp(22),
        decoration: BoxDecoration(
          gradient: PaletaCores.gradienteEntrar,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: responsive.dp(9),
            right: responsive.dp(1.6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Entrar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: responsive.dp(3.2),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: responsive.dp(2.4)),
              Padding(
                padding: EdgeInsets.only(
                  bottom: responsive.dp(2.8),
                  right: responsive.dp(1.2),
                ),
                child:
                    // ImageIcon(
                    //   AssetImage('assets/arrow_right_circle.png'),
                    //   size: responsive.dp(5.8),
                    // ),
                    IconButton(
                  onPressed: () {
                    Get.to(BodyApp());
                  },
                  icon: Icon(
                    Icons.arrow_circle_right_sharp,
                    size: responsive.dp(6),
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ClickClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double roundedFactor = 20;
    double percent = 0.72;

    path.moveTo(0, size.height * percent);
    path.lineTo(0, size.height - roundedFactor);
    //faz o primeiro canto
    path.quadraticBezierTo(0, size.height, roundedFactor, size.height);
    //
    // faz o segundo canto
    path.lineTo(size.width - roundedFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundedFactor);

    path.lineTo(size.width, roundedFactor * 2);

    path.quadraticBezierTo(
        size.width, 0, size.width - roundedFactor, roundedFactor * 0.1);

    path.lineTo(roundedFactor, size.height * percent + 8);

    path.quadraticBezierTo(0, size.height * percent + roundedFactor, 0,
        size.height * percent + roundedFactor * 2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}


///
///
///
///
///
///
///
///
///
///
///
///
// import 'package:flutter/material.dart';
// import 'package:teste/responsive.dart';

// class ContainerClick extends StatelessWidget {
//   const ContainerClick({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Responsive responsive = Responsive(context);
//     return Container(
//       height: responsive.dp(10),
//       decoration: BoxDecoration(
//           border: Border.all(color: Colors.red),
//           borderRadius: BorderRadius.all(Radius.circular(20))),
//       child: Center(
//         child: Text(
//           'Testando...',
//           style: TextStyle(color: Colors.red, fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
