import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../providers/rating_interview_provider.dart';

// ignore: non_constant_identifier_names
Widget RatingCommentPageCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: Card(
      shadowColor: kCARDCOLOR,
      elevation: 10,
      color: kCARDCOLOR,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              Provider.of<RatingInterviewProvider>(context).ratedElement.icon,
              style: const TextStyle(fontSize: 60),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Provider.of<RatingInterviewProvider>(context)
                    .ratedElement
                    .title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  Provider.of<RatingInterviewProvider>(context)
                      .ratedElement
                      .subtitle,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: kCHANGEBUTTON)
        ],
      ),
    ),
  );
}
