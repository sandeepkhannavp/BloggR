import 'package:flutter/material.dart';
import 'package:streamz/utilities/constants.dart';
import 'package:streamz/screens/all.dart';
import 'package:streamz/utilities/reusable_card.dart';

class CommentPage extends StatefulWidget {
  var data;
  var colors;
  CommentPage({Key? key, required this.data, required this.colors})
      : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLOGGR',
          style: textStyle2,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < 20; i++)
                    ReusableCard(
                      cols: widget.colors,
                      cardChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          spacedBox,
                          Text(
                            widget.data[0],
                            style: textStyle1.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              widget.data[1],
                              style: textStyle1,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TextField(
              cursorColor: Colors.white,
              style: textStyle4,
              obscureText: false,
              decoration: textInputDecoration('Add A Comment'),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}

InputDecoration textInputDecoration(typeText) {
  return InputDecoration(
    labelText: typeText,
    labelStyle: const TextStyle(
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
