import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Widgets/choices.dart';

import '../Widgets/AppBar_content.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 163, 140, 162),
        flexibleSpace: const content(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width *1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 200, 238),
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Question 1',
                    style: GoogleFonts.pacifico(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 28),
                  ),
                  Text(
                    'What is the capital of France?',
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
            for (int i = 0; i < 4; i++)
                  //reusable Widget i created in Widget folder
                    choices(index: i
                    ),
          ],
        ),
      ),
    );
  }
}
