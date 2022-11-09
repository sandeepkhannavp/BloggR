import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:streamz/screens/all.dart';
import 'package:streamz/utilities/image_card.dart';
import 'package:streamz/utilities/reusable_card.dart';
import '../utilities/constants.dart';
import '../utilities/post_box.dart';
import 'dart:math';

Random rand = Random();

class PostsPage extends StatefulWidget {
  var usrname;
  PostsPage({Key? key, required this.usrname}) : super(key: key);
  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  //var _genres = [];
  // void getData() async {
  //   var url = 'http://127.0.0.1:3000/genre/';
  //   try {
  //     //print('hi');
  //     final response = await get(Uri.parse(url));
  //     final data = jsonDecode(response.body) as List;
  //     setState(() {
  //       _genres = data;
  //     });
  //   } catch (err) {}
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  @override
  void initState() {
    super.initState();
  }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'WELCOME ${widget.usrname}!',
              style: textStyle2.copyWith(fontSize: 20),
            ),
            for (var i = 0; i < 10; i++)
              ReusableCard(
                cols: colors[rand.nextInt(4)],
                cardChild: const PostBox(),
              )
          ],
        ),
      ),
    );
  }
}
