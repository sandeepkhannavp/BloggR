// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:streamz/screens/all.dart';
import 'package:streamz/utilities/constants.dart';
import '../utilities/constants.dart';
import 'dart:convert';
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // void getData(uname) async {
  //   var url = 'http://127.0.0.1:3000/member/${uname}';
  //   Response response = await get(Uri.parse(url));
  // }

  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLOGGR',
          style: textStyle2,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME TO BLOGGR!\n',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              TextField(
                cursorColor: Colors.white,
                style: textStyle4,
                obscureText: false,
                decoration: TextInputDecoration('USERNAME'),
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                cursorColor: Colors.white,
                style: textStyle4,
                obscureText: true,
                decoration: TextInputDecoration('PASSWORD'),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(110, 50),
                  primary: appTextRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => PostsPage(usrname: _username))));
                }),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration TextInputDecoration(typeText) {
    return InputDecoration(
      labelText: typeText,
      labelStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Bebas Neue',
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          color: appTextRedColor,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
