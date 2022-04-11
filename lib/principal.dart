import 'package:flutter/material.dart';
import 'package:teste/clipper_appbar.dart';
import 'package:teste/responsive.dart';
import 'package:teste/viagem_appbar.dart';

import 'paleta_cores.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PaletaCores.colorBackground,
        elevation: 0.9,
        toolbarHeight: responsive.dp(7.2),
        flexibleSpace: ClipPath(
          clipper: ClipperAppbar(),
          child: Container(
            decoration: BoxDecoration(
              gradient: PaletaCores.gradienteEntrar,
            ),
          ),
        ),
      ),
      body: Container(
        color: PaletaCores.colorBackground,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ViagemAppbar(),
            ],
          ),
        ),
      ),
    );
  }
}
