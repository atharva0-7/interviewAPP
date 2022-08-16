import 'package:flutter/material.dart';
import 'package:interview_app/data/models/rating_data.dart';

var ratingList = [
  RatingInformation(
      icon: "👏🏼",
      subtitle: "Best interviewer Ever!",
      title: "Awesome",
      borderColor: Colors.blue,
      rated: false),
  RatingInformation(
      icon: "👍🏼",
      subtitle: "Nice person. Really Nice!",
      title: "Good",
      borderColor: Colors.green,
      rated: false),
  RatingInformation(
      icon: "😐",
      subtitle: "Ummm... Okay. I guess!",
      title: "Neutral",
      borderColor: Colors.grey,
      rated: false),
  RatingInformation(
      icon: "🙁",
      subtitle: "Needs to Improve!. A LOT!",
      title: "Bad",
      borderColor: Colors.red,
      rated: false)
];
