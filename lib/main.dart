import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_page.dart';

import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/widgets/themes.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.system,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
    
    initialRoute: MyRoutes.homeRoute,
    
      routes : {
       
        MyRoutes.loginRoute : (context) =>   const LoginPage(),
        MyRoutes.homeRoute : (context) =>   const homePage(),
        MyRoutes.cartRoute : (context) =>   CartPage()
      },
    );
  }
}