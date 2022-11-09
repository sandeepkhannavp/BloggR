// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../utilities/image_card.dart';
import '../utilities/option_button.dart';
import 'dart:convert';
import 'package:http/http.dart';

class MoviePage extends StatefulWidget {
  var movie_id;
  MoviePage({Key? key, required this.movie_id}) : super(key: key);
  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  var _movie = [];
  var _movie1 = [];
  var _movie2 = [];
  var _movie3 = [];
  var _movie4 = [];
  var _movie5 = [];
  void getData() async {
    var url = 'http://127.0.0.1:3000/movie/${widget.movie_id}';
    var url1 = 'http://127.0.0.1:3000/actor/cast/${widget.movie_id}';
    var url2 = 'http://127.0.0.1:3000/actor/castpicture/${widget.movie_id}';
    var url3 = 'http://127.0.0.1:3000/movie/directorpicture/${widget.movie_id}';
    var url4 = 'http://127.0.0.1:3000/movie/director/${widget.movie_id}';
    var url5 = 'http://127.0.0.1:3000/movie/poster/${widget.movie_id}';
    try {
      final response = await get(Uri.parse(url));
      final data = jsonDecode(response.body);
      final response1 = await get(Uri.parse(url1));
      final data1 = jsonDecode(response1.body);
      final response2 = await get(Uri.parse(url2));
      final data2 = jsonDecode(response2.body);
      final response3 = await get(Uri.parse(url3));
      final data3 = jsonDecode(response3.body);
      final response4 = await get(Uri.parse(url4));
      final data4 = jsonDecode(response4.body);
      final response5 = await get(Uri.parse(url5));
      final data5 = jsonDecode(response5.body);
      setState(() {
        _movie = data;
        _movie1 = data1;
        _movie2 = data2;
        _movie3 = data3;
        _movie4 = data4;
        _movie5 = data5;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STREAMZ', style: textStyle2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              ImageCard(
                url: _movie5[0]['url'],
                height: 300,
                width: 200,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  _movie[0]['movie_name'],
                  style: textStyle2.copyWith(color: Colors.white),
                ),
              ),
              Text(
                '${_movie[0]['movie_year']}, ${_movie[0]['studio']}',
                style: textStyle1,
              ),
              Text(
                _movie[0]['lang'],
                style: textStyle1,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _movie[0]['rating'].toString(),
                    style: textStyle1,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.hd_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OptionButton2(
                      textData: 'BUY ₹${_movie[0]['buy_cost']}',
                      destination: '/cart'),
                  SizedBox(width: 20),
                  OptionButton2(
                      textData: 'RENT ₹${_movie[0]['rent_cost']}',
                      destination: '/cart'),
                ],
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'PLOT',
                  style: textStyle1,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  _movie[0]['synopsis'],
                  style: textStyle3,
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'CAST',
                  style: textStyle1,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      LabeledImage(
                        url: _movie2[0]['url'],
                        height: 200,
                        width: 133,
                        labelText: _movie1[0]['actor_name'],
                      ),
                      LabeledImage(
                        url: _movie2[1]['url'],
                        height: 200,
                        width: 133,
                        labelText: _movie1[1]['actor_name'],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'DIRECTOR',
                  style: textStyle1,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: LabeledImage(
                  url: _movie3[0]['url'],
                  height: 200,
                  width: 133,
                  labelText: _movie4[0]['director_name'],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
