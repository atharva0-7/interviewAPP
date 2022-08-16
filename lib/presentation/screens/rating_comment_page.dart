import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';
import 'package:interview_app/presentation/screens/add_extra_comment_page.dart';
import 'package:interview_app/presentation/screens/thankyou_page.dart';
import 'package:interview_app/presentation/widgets/next_button.dart';
import 'package:interview_app/presentation/widgets/rating_buttons.dart';
import 'package:interview_app/presentation/widgets/rating_comment_page_card.dart';

class RatingCommentPage extends StatelessWidget {
  const RatingCommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                const Icon(Icons.comment_outlined),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ExtraCommentPage()));
                    },
                    child: kADDCOMMENTBUTTONTEXT)
              ],
            ),
          ),
          NextButton(context, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ThankyouPage()));
          }, "SUBMIT"),
        ],
      ),
      backgroundColor: kSCAFFOLDBACKGROUNDCOLOR,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: kBOTTOMCIRCULARCONTAINER,
            height: 240,
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("YOU HAVE RATED YOUR INTERVIEWER",
                      style: kINTERVIEWERCOUNT),
                  RatingCommentPageCard(context),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height - 300,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kWHATMADEAWEOMETEXT,
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          RatingButton("Politeness"),
                          const SizedBox(
                            width: 20,
                          ),
                          RatingButton("Professionalism")
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        RatingButton("Expertise"),
                        const SizedBox(
                          width: 20,
                        ),
                        RatingButton("Guidance")
                      ],
                    ),
                    Row(
                      children: [
                        RatingButton("Attentativeness"),
                        const SizedBox(
                          width: 20,
                        ),
                        RatingButton("Questions asked")
                      ],
                    ),
                    RatingButton("Quality of questions"),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
