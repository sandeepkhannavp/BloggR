import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:streamz/screens/all.dart';
import 'package:streamz/utilities/image_card.dart';
import 'package:streamz/utilities/reusable_card.dart';
import '../utilities/constants.dart';
import '../utilities/post_box.dart';
import 'dart:math';

class PostPage extends StatefulWidget {
  //var data;
  PostPage({Key? key /*,required this.data*/}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    ImageCard(
                      url: urls[rand.nextInt(5)],
                      height: 200,
                      width: 370,
                    ),
                ],
              ),
            ),
            spacedBox,
            Text(
              'Caption',
              style: textStyle2.copyWith(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            spacedBox,
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                caption2,
                style: textStyle4.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
