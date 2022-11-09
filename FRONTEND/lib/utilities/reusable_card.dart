import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.cols, required this.cardChild})
      : super(key: key);
  final List<Color> cols;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft, end: Alignment.bottomRight, colors: cols),
        borderRadius: BorderRadius.circular(20),
      ),
      child: cardChild,
    );
  }
}
