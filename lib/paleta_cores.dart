import 'package:flutter/material.dart';

class PaletaCores {
  static const Color azulFacebook = Color(0xFF1777F2);
  static Color whiteOpacity = Colors.white.withOpacity(0.8);
  static const Color corPadrao = Color(0xff469087);
  static const Color corPadraoSecundario = Color(0xff08453d);
  static const Color scaffold = Color(0xFFF0F2F5);
  static const Color principal = Color(0xFFF5591F);
  static const Color principalSecundaria = Color(0xFFF59314);
  static const Color colorBackground = Color(0xFF262626);
  static const LinearGradient degradeEstoria = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.transparent,
      Colors.black54,
    ],
  );
  static const LinearGradient degradePerfil = LinearGradient(
    colors: [
      Colors.white24,
      PaletaCores.principalSecundaria,
      PaletaCores.principal,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static LinearGradient degradeAppBar = LinearGradient(
    stops: const [
      0.2,
      0.4,
      0.6,
      1,
    ],
    colors: const [
      PaletaCores.corPadrao,
      Color(0xFF1a635a),
      Color(0xFF0f423b),
      Color(0xFF09453e),
    ],
  );

  static LinearGradient gradienteEntrar = LinearGradient(
    colors: const [
      PaletaCores.corPadrao,
      PaletaCores.corPadraoSecundario,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );

  static LinearGradient gradienteAppBar = LinearGradient(
    colors: [
      PaletaCores.corPadrao.withOpacity(0.9),
      PaletaCores.corPadrao.withOpacity(0.6),
      PaletaCores.corPadrao.withOpacity(0.2),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: const [
      0.1,
      0.4,
      0.8,
    ],
  );
}
