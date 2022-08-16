import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';
import 'package:interview_app/data/models/rating_data.dart';
import 'package:interview_app/presentation/providers/rating_interview_provider.dart';
import 'package:provider/provider.dart';

// ignore: non_constant_identifier_names
Widget RatingCard(RatingInformation rating, BuildContext context) {
  Provider.of<RatingInterviewProvider>(context).tempValue;
  return InkWell(
    onTap: (() {
      Provider.of<RatingInterviewProvider>(context, listen: false)
          .rateItem(rating);
    }),
    child: SizedBox(
      height: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: rating.borderColor, //<-- SEE HERE
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: rating.rated ? kCARDCOLOR : kSCAFFOLDBACKGROUNDCOLOR,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    rating.icon,
                    style: const TextStyle(fontSize: 50),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    rating.title,
                    style: rating.rated
                        ? kCARDTITLESTYLE
                        : const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    rating.subtitle,
                    style: rating.rated
                        ? const TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white)
                        : null,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
