import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Global/Quiz_data.dart';
import 'package:shimmer/shimmer.dart';

import '../Screens/QuizScreen.dart';

class CategoryContainer extends StatefulWidget {
  final int index;

  CategoryContainer({
    super.key,
    // super.key,
    required this.index,
  });

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  List quizName = [
    "Sport Test",
    "History Test",
    "General Test",
    "Math Test",
    "Science Test",
    "English Test"
  ];

  List quizColor = [
    const Color.fromRGBO(125, 110, 131, 1.000),
    const Color.fromARGB(125, 110, 131, 170),
    const Color.fromARGB(255, 163, 140, 162),
    const Color.fromARGB(255, 189, 150, 197),
    const Color.fromRGBO(150, 182, 197, 1.000),
    const Color.fromARGB(255, 177, 135, 117),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(
                categoryMap: dataBase[widget.index],
              ),
            ),
          );
        },
        child: Shimmer.fromColors(
          // that made the name of quiz with different colors that I created in QuizColor List 
          baseColor: quizColor[widget.index],
          highlightColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                //color: quizColor[widget.index],
                border: Border.all(width: 1, color: Colors.black)),
            child: Center(
              child: Text(
                quizName[widget.index],
                style: GoogleFonts.pacifico(fontSize: 35, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
