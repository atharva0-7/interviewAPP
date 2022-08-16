import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';
import 'package:interview_app/main.dart';
import 'package:interview_app/presentation/providers/rating_interview_provider.dart';
import 'package:provider/provider.dart';

class ThankyouPage extends StatelessWidget {
  const ThankyouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const MyApp()));
          },
          child: kHOMETEXT),
      backgroundColor: kSCAFFOLDBACKGROUNDCOLOR,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                "https://png.pngtree.com/png-vector/20191015/ourmid/pngtree-light-bulb-vector-glowing-bright-light-bulb-icon-fluorescent-invention-3d-png-image_1788706.jpg"),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "Thank You!",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: RichText(
                text: TextSpan(
                  text:
                      '"We have taken your feedback. We are glad that you felt your interviewer was ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: Provider.of<RatingInterviewProvider>(context)
                            .ratedElement
                            .title
                            .toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const TextSpan(text: '!'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
