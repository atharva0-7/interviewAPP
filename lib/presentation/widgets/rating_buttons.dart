import 'package:flutter/material.dart';
import 'package:interview_app/presentation/providers/provider.dart';
import 'package:provider/provider.dart';

class RatingButton extends StatelessWidget {
  final String text;
  RatingButton(this.text);
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    Provider.of<InterviewerProvider>(context).getInterviewerCount();

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: isPressed ? Color.fromARGB(255, 143, 205, 145) : null,
        side: isPressed
            ? const BorderSide(
                width: 1.5, color: Color.fromARGB(255, 32, 103, 34))
            : null,
      ),
      onPressed: () {
        Provider.of<InterviewerProvider>(context, listen: false)
            .rebuildRatingButton();
        if (isPressed) {
          isPressed = false;
        } else {
          isPressed = true;
        }
      },
      child: Text(
        text,
        style: isPressed
            ? const TextStyle(color: Color.fromARGB(255, 16, 86, 18))
            : const TextStyle(color: Colors.black),
      ),
    );
  }
}
