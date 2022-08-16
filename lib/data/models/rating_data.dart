import 'package:flutter/material.dart';

class RatingInformation {
  final String title;
  final String subtitle;
  final String icon;
  final Color borderColor;
  bool rated = false;

  RatingInformation(
      {required this.icon,
      required this.subtitle,
      required this.title,
      required this.rated,
      required this.borderColor});
}
