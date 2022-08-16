import 'package:flutter/material.dart';
import 'package:interview_app/data/models/interviewer_data_model.dart';

class InterviewerProvider with ChangeNotifier {
  int _interviewerCount = 0;
  addInterviewer(Interviewer interviewer) {
    if (interviewer.added) {
      interviewer.added = false;
      _interviewerCount--;
    } else {
      interviewer.added = true;
      _interviewerCount++;
    }
    notifyListeners();
  }

  rebuildRatingButton() {
    notifyListeners();
  }

  getInterviewerCount() {
    return _interviewerCount;
  }
}
