import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inu_bus/constants.dart';
import 'package:inu_bus/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inu_bus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: kBackgraundcolor),
                      scaffoldBackgroundColor: kBackgraundcolor,
        primaryColor: Colors.white,
        accentColor: kAccentcolor,
        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
