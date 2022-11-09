// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class GenreButton extends StatelessWidget {
  GenreButton({
    required this.col,
    required this.genre,
    required this.onP,
  });
  final Color col;
  final String genre;
  final Function onP;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 250,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            genre,
            style: textStyle1.copyWith(
              fontSize: 40,
            ),
          ),
        ),
      ),
      onTap: () {
        onP();
      },
    );
  }
}
