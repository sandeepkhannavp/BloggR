// import 'dart:io';
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/all.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          ),
          fontFamily: 'Bebas Neue',
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            toolbarHeight: 40,
            color: Colors.black,
          )),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/post': (context) => PostPage(),
        //'/comment': (context) => CommentPage()
      },
      initialRoute: '/home',
    );
  }
}
