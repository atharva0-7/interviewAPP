import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';
import 'package:interview_app/presentation/providers/rating_interview_provider.dart';
import 'package:interview_app/presentation/screens/rating_comment_page.dart';
import 'package:interview_app/presentation/widgets/next_button.dart';
import 'package:interview_app/presentation/widgets/rating_card.dart';
import 'package:interview_app/rating_list.dart';
import 'package:provider/provider.dart';

class InterviewRatePage extends StatelessWidget {
  const InterviewRatePage({Key? key}) : super(key: key);
  onPressed(BuildContext context) {
    if (Provider.of<RatingInterviewProvider>(context).rated) {
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: kGOBACKTEXT)),
          NextButton(
              context,
              Provider.of<RatingInterviewProvider>(context).rated != true
                  ? null
                  : () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => (const RatingCommentPage())));
                      // print("pressed");
                    },
              "NEXT"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25, top: 40),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "How would you rate your interviewer(s)?",
              style: kTITLE,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 25),
              child: Text("SELECT YOUR RATING"),
            ),
            SizedBox(

                // color: Colors.orange,
                height: MediaQuery.of(context).size.height - 400,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height - 400),
                    ),
                    children: ratingList
                        .map((ratingElement) =>
                            RatingCard(ratingElement, context))
                        .toList()))
          ]),
        ),
      ),
    );
  }
}
