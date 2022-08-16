import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:interview_app/data/models/interviewer_data_model.dart';

const String url =
    "https://randomuser.me/api/?seed=ab&inc=name,cell&results=20";

Future<List<dynamic>> getInterviewersList(BuildContext context) async {
  try {
    print("before");
    var response =
        await Dio().get(url).timeout(const Duration(seconds: 5), onTimeout: () {
      throw TimeoutException("Error in timeout");
    });
    print("after");

    if (response.statusCode == 200) {
      var decodedJson = response.data["results"]
          .map((element) => (Interviewer.fromJson(element)))
          .toList();
      return decodedJson;
    } else {
      // ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(content: Text("Error, Please try again later")));
      return [];
    }
  } catch (e) {
    print(e);
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Error, Please try again later")));
    return const Center(
      child: CircularProgressIndicator(),
    ) as Future<List<dynamic>>;
  }
}
