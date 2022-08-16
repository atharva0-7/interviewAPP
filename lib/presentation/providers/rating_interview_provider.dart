import 'package:flutter/material.dart';
import 'package:interview_app/data/models/rating_data.dart';
import 'package:interview_app/rating_list.dart';

class RatingInterviewProvider with ChangeNotifier {
  int tempValue = 0;
  late RatingInformation ratedElement;
  bool rated = false;

  rateItem(RatingInformation rating) {
    if (rating.rated) {
      for (RatingInformation element in ratingList) {
        if (element == rating) {
          rated = false;
          element.rated = false;
        } else {
          // element.rated = true;
        }
      }
    } else {
      // rating.rated = true;
      for (var element in ratingList) {
        if (element == rating) {
          element.rated = true;
          rated = true;
          ratedElement = element;
        } else {
          element.rated = false;
        }
      }
    }
    notifyListeners();
  }
}
