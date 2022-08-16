import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';
import 'package:interview_app/data/sources/remote/get_interviewers.dart';
import 'package:interview_app/presentation/providers/provider.dart';
import 'package:interview_app/presentation/providers/rating_interview_provider.dart';
import 'package:interview_app/presentation/screens/first_page.dart';
import 'package:provider/provider.dart';

void main() {
  // Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RatingInterviewProvider>(
            create: (_) => RatingInterviewProvider()),
        ChangeNotifierProvider<InterviewerProvider>(
            create: (_) => InterviewerProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: kSCAFFOLDBACKGROUNDCOLOR,
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder<List<dynamic>>(
            future: getInterviewersList(context),
            builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
              if (snapshot.hasError) {
                return Scaffold(
                  body: Column(
                    children: [
                      IconButton(
                          onPressed: () async {
                            await getInterviewersList(context);
                          },
                          icon: const Icon(Icons.refresh))
                    ],
                  ),
                );
              }
              if (snapshot.hasData) {
                return FirstPage(snapshot.data!);
              } else {
                return const Scaffold(
                    body: Center(child: CircularProgressIndicator()));
              }
            }),
      ),
    );
  }
}
