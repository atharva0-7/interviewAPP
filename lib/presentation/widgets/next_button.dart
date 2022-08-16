import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';

// ignore: non_constant_identifier_names
Widget NextButton(
    BuildContext context, Null Function()? onPressed, String title) {
  return Card(
      color: Colors.transparent,
      elevation: 10,
      child: SizedBox(
          height: 45,
          width: 110,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.5);
                  } else if (states.contains(MaterialState.disabled)) {
                    return const Color.fromARGB(255, 153, 158, 179);
                  }
                  return const Color.fromARGB(255, 20, 135, 59);
                },
              ),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: kNEXTBUTTON,
                ),
                kNEXTBUTTONICON
              ],
            ),
          )));
}
