// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:streamz/utilities/constants.dart';
import 'package:streamz/utilities/option_button.dart';

class HomePage extends StatelessWidget {
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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'WELCOME TO BLOGGR!\n',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              OptionButton(
                textData: 'New To BloggR? Sign Up!',
                nextPage: '/signup',
              ),
              SizedBox(
                height: 40,
              ),
              OptionButton(
                textData: 'ALREADY A USER? LOGIN!',
                nextPage: '/login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
