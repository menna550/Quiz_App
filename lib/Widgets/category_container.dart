import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/QuizScreen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    // super.key,
    required this.index,
  });

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [const Color.fromARGB(255, 189, 150, 197),
    const Color.fromARGB(255, 163, 140, 162),
    const Color.fromARGB(255, 224, 200, 238)
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const QuizScreen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style: GoogleFonts.pacifico(
                  fontSize: 35, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}