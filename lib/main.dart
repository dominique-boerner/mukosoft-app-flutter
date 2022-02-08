import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mucomed_flutter/screens/profil.dart';
import 'package:mucomed_flutter/screens/vitaldata/blood_pressure.dart';
import 'package:mucomed_flutter/theme/theme.dart';
import 'package:mucomed_flutter/widgets/navigation/navigation.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

Color primaryColor = const Color(0xff19af99);
MaterialColor primaryColorSwatch =
    const MaterialColor(0xff19af99, <int, Color>{});


void main() async {
  Hive.initFlutter();
  runApp(
    MaterialApp(
      theme: appTheme,
      routes: {
        "/home": (context) => const Nav(),
        "/profil": (context) => const Profil(),
        "/blutdruck": (context) => const BloodPressureScreen(),
      },
      initialRoute: "/home",
      title: "MucoMed",
      home: const Nav(),
      debugShowCheckedModeBanner: false,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}
