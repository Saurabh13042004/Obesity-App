import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(

    canvasColor:  const Color(0xfff5f5f5),
    fontFamily: GoogleFonts.poppins().fontFamily,
    buttonColor: darkCreamColor,
    cardColor: Colors.white,
accentColor: darkBluishColor,
    appBarTheme: AppBarTheme(
      color:  Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
      ) 
 );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
     fontFamily: GoogleFonts.poppins().fontFamily,
       // ignore: deprecated_member_use
       buttonColor: lightBluishColor,
       accentColor: Colors.white,
        canvasColor: darkCreamColor,
        cardColor: Colors.black,
        appBarTheme: AppBarTheme(
      color:  Colors.black,
      elevation: 0.0,
      iconTheme:  IconThemeData(color: Colors.white), 
      // ignore: deprecated_member_use
      textTheme: Theme.of(context).textTheme,
     
      ) 
      );


      //Colors
// ignore: prefer_const_constructors
static Color creamColor =  Color(0xfff5f5f5);
static Color darkCreamColor = Vx.gray900;
// ignore: prefer_const_constructors
static Color darkBluishColor =  Color(0xff403b58);
static Color lightBluishColor = Vx.indigo500;

}

