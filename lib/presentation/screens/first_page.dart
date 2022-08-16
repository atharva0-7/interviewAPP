import 'package:flutter/material.dart';
import 'package:interview_app/constants/constants.dart';
import 'package:interview_app/presentation/providers/provider.dart';
import 'package:interview_app/presentation/screens/interview_rate_page.dart';
import 'package:interview_app/presentation/widgets/next_button.dart';
import 'package:interview_app/presentation/widgets/shader_mask.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  final List<dynamic> snapshotData;
  const FirstPage(this.snapshotData, {Key? key}) : super(key: key);
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    _interviewerData = widget.snapshotData;
    super.initState();
  }

  final _textEditingController = TextEditingController();
  late List<dynamic> _interviewerData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NextButton(
          context,
          Provider.of<InterviewerProvider>(context).getInterviewerCount() == 0
              ? null
              : () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const InterviewRatePage()));
                },
          "NEXT"),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              // color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25, bottom: 10, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Interviewers",
                      style: kTITLE,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Card(
                        margin: const EdgeInsets.all(0),
                        elevation: 5,
                        child: TextField(
                            controller: _textEditingController,
                            onChanged: searchInterviewer,
                            decoration: kSEARCHBARDECORATION),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                          "${Provider.of<InterviewerProvider>(context).getInterviewerCount().toString()} ADDED",
                          style: kINTERVIEWERCOUNT),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 236.5,
              child: shaderMask(ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: _interviewerData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      trailing: TextButton(
                          onPressed: () {
                            Provider.of<InterviewerProvider>(context,
                                    listen: false)
                                .addInterviewer(_interviewerData[index]);
                          },
                          child: _interviewerData[index].added
                              ? const Text(
                                  "REMOVE",
                                  style: kADDBUTTON,
                                )
                              : const Text(
                                  "ADD",
                                  style: kADDBUTTON,
                                )),
                      subtitle: Text(
                        _interviewerData[index].name.first.toString(),
                        style: TextStyle(
                            color: _interviewerData[index].added
                                ? Colors.blue
                                : Colors.black),
                      ),
                      title: Text(
                        "${_interviewerData[index].name.first.toString()} ${_interviewerData[index].name.last.toString()}",
                        style: TextStyle(
                            color: _interviewerData[index].added
                                ? Colors.blue
                                : Colors.black),
                      ));
                },
              )),
            ),
          ),
        ],
      ),
    );
  }

  void searchInterviewer(String query) {
    List<dynamic> tempSnapshot = widget.snapshotData;
    List<dynamic> suggestion = tempSnapshot.where((element) {
      final interviewerFirstName = element.name.first.toString().toLowerCase();
      final interviewerLastName = element.name.last.toString().toLowerCase();
      final input = query.toLowerCase();
      // print(interviewerName.contains(input));
      return interviewerFirstName.contains(input) ||
          interviewerLastName.contains(input);
    }).toList();
    setState(() {
      // print(suggestion);
      _interviewerData = suggestion;
      // print(suggestion);
      // snapsotData =
    });
  }
  // print(suggestion[0].name.first);
}
