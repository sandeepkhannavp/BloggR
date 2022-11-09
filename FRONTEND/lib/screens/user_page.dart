import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:streamz/screens/all.dart';
import 'package:streamz/utilities/image_card.dart';
import 'package:streamz/utilities/reusable_card.dart';
import '../utilities/constants.dart';

class UserPage extends StatefulWidget {
  var url;
  var uname;
  UserPage({Key? key, required this.url, required this.uname})
      : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLOGGR',
          style: textStyle2,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    widget.url,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  widget.uname,
                  style: textStyle2.copyWith(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '17 Posts',
              style: textStyle2,
            ),
            const SizedBox(
              width: double.infinity,
              height: 20,
            ),
            for (int i = 0; i < 10; i++)
              Column(
                children: [
                  LabeledImage(
                    url: unames[0][1],
                    height: 300,
                    width: 350,
                    labelText: 'Title',
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
