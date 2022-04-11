import 'package:flutter/material.dart';
import 'package:teste/viagem_appbar.dart';

import 'paleta_cores.dart';
import 'responsive.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive(context);
    return Scaffold(
      body: Container(
        color: PaletaCores.colorBackground,
        child: SafeArea(
          child: Column(
            children: const [
              ViagemAppbar(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: PaletaCores.corPadrao,
        selectedItemColor: Colors.white,
        selectedFontSize: responsive.dp(2),
        selectedIconTheme:
            IconThemeData(color: Colors.white, size: responsive.dp(4)),
        unselectedItemColor: Colors.white.withOpacity(0.4),
        unselectedFontSize: responsive.dp(1.6),
        unselectedIconTheme:
            IconThemeData(color: Colors.white, size: responsive.dp(3.6)),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Viagem',
          ),
        ],
      ),
    );
  }
}
