import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Global/Quiz_data.dart';
import 'package:screen/Screens/Score_screen.dart';

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  QuizScreen({super.key, required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.categoryMap["color"],
        leading: Center(
          child: Text(
            "${index + 1} / ${(widget.categoryMap["data"] as List).length}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        title: Text(
          widget.categoryMap['Category'],
          style: GoogleFonts.barriecito(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 13),
            child: Icon(
              Icons.access_time,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: widget.categoryMap["color"],
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Question ${index + 1}',
                    style: GoogleFonts.pacifico(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 28),
                  ),
                  Text(
                    widget.categoryMap["data"][index]["question"],
                    style:
                        GoogleFonts.pacifico(color: Colors.black, fontSize: 25),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Choices is :',
              style: GoogleFonts.pacifico(color: Colors.black, fontSize: 22),
            ),
            //_____________________________________
            for (int i = 0;
                i <
                    (widget.categoryMap["data"][index]["answers"] as List)
                        .length;
                i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.categoryMap["color"],
                    elevation: 10,
                  ),
                  onPressed: () {

                    score += widget.categoryMap["data"][index]["answers"][i]["Score"] as int;

                    if (index + 1 <
                        (widget.categoryMap["data"] as List).length) {
                      setState(() {
                        
                        index++;
                      });
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              Score_screen(score: score, totalNumOfQuestions: index + 1 ,),
                        ),
                      );
                    }
                  },
                  child: Center(
                    child: Text(
                      widget.categoryMap['data'][index]["answers"][i]["ans"],
                      style: GoogleFonts.pacifico(
                          fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
