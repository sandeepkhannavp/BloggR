// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:streamz/utilities/constants.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'dart:math';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final url = 'http://127.0.0.1:3000/member/';
  void postData() async {
    try {
      Random random = Random();
      var response = await post(Uri.parse(url),
          headers: {
            "Content-type": "application/json",
            "Accept": "application/json",
            "Ocp-Apim-Subscription-Key": "008c47b597e54aedadbd5e4d270b35ed",
            "Ocp-Apim-Trace": "true"
          },
          body: jsonEncode({
            "member_id": random.nextInt(1000),
            "member_name": _name,
            "phno": _pno,
            "email": _email,
            "username": _username,
            "passwd": _password,
            "balance": 5000
          }));
      print(response.body);
    } catch (e) {
      print(e);
    }
  }

  String? _username, _password, _email, _pno, _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLOGGR',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: appTextRedColor,
          ),
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
                decoration: TextInputDecoration('NAME'),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.white,
                style: textStyle4,
                obscureText: false,
                decoration: TextInputDecoration('EMAIL'),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
                style: textStyle4,
                obscureText: false,
                decoration: TextInputDecoration('PHONE NUMBER'),
                onChanged: (value) {
                  setState(() {
                    _pno = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
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
                onPressed: (() async {
                  postData();
                  Navigator.pushNamed(context, '/genres');
                }),
                child: Text(
                  'SIGNUP',
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
