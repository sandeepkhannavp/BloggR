// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  ImageCard({required this.url, required this.height, required this.width});

  final String url;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox.fromSize(
            size: Size.fromRadius(200),
            child: Image.network(
              url,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class LabeledImage extends StatelessWidget {
  const LabeledImage(
      {required this.url,
      required this.height,
      required this.width,
      required this.labelText});

  final String url, labelText;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageCard(url: url, height: height, width: width),
        Text(
          labelText,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
