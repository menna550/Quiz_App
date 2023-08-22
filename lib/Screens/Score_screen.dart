import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Screens/Category_Screen.dart';
import 'package:screen/Screens/OpeningScreen.dart';

import '../Global/Quiz_data.dart';

class Score_screen extends StatefulWidget {
  final int score;
  final int totalNumOfQuestions;
  const Score_screen(
      {super.key, required this.score, required this.totalNumOfQuestions});

  @override
  State<Score_screen> createState() => _Score_screenState();
}

class _Score_screenState extends State<Score_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const CategoryScreen(),
              ),
            );
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.pinkAccent,
          Colors.red,
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Congratulations",
                style: GoogleFonts.barriecito(
                  color: Colors.white,
                  fontSize: 45,
                ),
              ),
              Text(
                'Hello, ${userName.text}\nYour score is ${widget.score} / ${widget.totalNumOfQuestions}',
                style: GoogleFonts.caveat(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const OpeningScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Play again',
                    style: TextStyle(fontSize: 15, color:Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    
  }
}
