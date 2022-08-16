import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';
import 'package:interview_app/presentation/screens/thankyou_page.dart';
import 'package:interview_app/presentation/widgets/next_button.dart';

class ExtraCommentPage extends StatefulWidget {
  const ExtraCommentPage({Key? key}) : super(key: key);

  @override
  State<ExtraCommentPage> createState() => _ExtraCommentPageState();
}

class _ExtraCommentPageState extends State<ExtraCommentPage> {
  int _count = 0;
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
                child: kSKIPBUTTONTEXT),
          ),
          NextButton(context, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ThankyouPage()));
          }, "SUBMIT"),
        ],
      ),
      backgroundColor: kSCAFFOLDBACKGROUNDCOLOR,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "COMMENT (OPTIONAL)",
                        style: kINTERVIEWERCOUNT,
                      ),
                      Text(
                        "$_count/240",
                        style: kINTERVIEWERCOUNT,
                      )
                    ],
                  )),
              TextField(
                maxLength: 240,
                onChanged: (value) {
                  setState(() {
                    _count = value.length;
                  });
                },
                style: const TextStyle(fontSize: 25),
                decoration: kHINTTEXTSTYLE,
                maxLines: 12,
                keyboardType: TextInputType.multiline,
              )
            ],
          ),
        ),
      ),
    );
  }
}
