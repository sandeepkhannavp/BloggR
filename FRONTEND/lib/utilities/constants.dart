// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Color appTextRedColor = Colors.indigoAccent;

TextStyle textStyle1 = const TextStyle(
    fontSize: 20, fontFamily: 'Neue Helvetica', color: Colors.black);

TextStyle textStyle2 = TextStyle(
    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.indigoAccent);

TextStyle textStyle3 = TextStyle(
  fontSize: 17.5,
  fontFamily: 'Roboto',
);

TextStyle textStyle4 = TextStyle(
  fontSize: 25,
  fontFamily: 'Inter',
  color: Colors.white,
);

TextStyle textStyle5 = const TextStyle(
    fontSize: 20,
    fontFamily: 'Neue Helvetica',
    fontWeight: FontWeight.bold,
    color: Colors.black);

Icon hollowHeartIcon = const Icon(
  Icons.favorite_outline_rounded,
  color: Colors.white,
  size: 35,
);

Icon filledHeartIcon = const Icon(
  Icons.favorite_rounded,
  color: Colors.pink,
  size: 35,
);

SizedBox spacedBox = const SizedBox(
  width: double.infinity,
  height: 10,
);

var colors = [
  [Colors.green, Colors.blue],
  [Colors.red, Colors.yellow],
  [Colors.teal, Colors.indigo],
  [Colors.orange, Colors.yellow],
];

var caption =
    'This is a test paragraph. Hi! Hello! Nice to meet you! Beautiful pictures!';

var caption2 = (caption + ' ') * 100;

var urls = [
  'https://images.dailyhive.com/20190510150812/Morraine-Lake-feautre.jpg',
  'https://handluggageonly.co.uk/wp-content/uploads/2014/10/Hand-Luggage-Only-2.jpg',
  'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&w=1200',
  'https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/1166209/pexels-photo-1166209.jpeg?auto=compress&cs=tinysrgb&w=1200',
];

var unames = [
  [
    'jaikocher',
    'https://cf-images.us-east-1.prod.boltdns.net/v1/static/5359769168001/0a823cb0-01a9-4835-a348-c64187783ccb/d37cb96c-805c-4aa2-9f2f-e62d9eb814c7/1280x720/match/image.jpg'
  ],
  [
    'gilfoyle',
    'https://www.denofgeek.com/wp-content/uploads/2019/02/mcu-1-iron-man.jpg?fit=1200%2C675'
  ],
  [
    'iarjunz',
    'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Vision-Avengers.Age.of.Ultron.webp'
  ],
  [
    'artemis',
    'https://cdn.vox-cdn.com/thumbor/xBIBkXiGLcP-kph3pCX61U7RMPY=/0x0:1400x788/1200x800/filters:focal(588x282:812x506)/cdn.vox-cdn.com/uploads/chorus_image/image/70412073/0377c76083423a1414e4001161e0cdffb0b36e1f_760x400.0.png'
  ],
  [
    'agi',
    'https://cdn.britannica.com/57/183257-050-0BA11B4B/Roger-Federer-2012.jpg'
  ],
  [
    'qoobee',
    'https://upload.wikimedia.org/wikipedia/commons/5/5e/Charles_Leclerc_portrait_2020.png'
  ],
  [
    'venky',
    'https://cdn.britannica.com/99/124299-050-4B4D509F/Linus-Torvalds-2012.jpg?w=400&h=300&c=crop'
  ]
];
