import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste/paleta_cores.dart';
import 'package:teste/responsive.dart';

class ContainerClick extends StatelessWidget {
  const ContainerClick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return ClipPath(
      clipper: ClickClipper(),
      child: Container(
        height: responsive.dp(14),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              PaletaCores.corPadrao,
              PaletaCores.corPadraoSecundario,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
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
    double raundnessFactor = 20;
    double percent = 0.58;

    path.moveTo(0, size.height * percent);

    path.lineTo(0, size.height - raundnessFactor);

    path.quadraticBezierTo(0, size.height, raundnessFactor, size.height);

    path.lineTo(size.width - raundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - raundnessFactor);
    path.lineTo(size.width, raundnessFactor * 2);

    path.quadraticBezierTo(size.width, 0, size.width - raundnessFactor * 3, 2);

    path.lineTo(raundnessFactor, size.height * percent + 10);

    path.quadraticBezierTo(0, size.height * percent + raundnessFactor, 0,
        size.height * percent + raundnessFactor * 2);

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
