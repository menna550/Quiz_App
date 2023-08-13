import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Screens/Score_screen.dart';

class choices extends StatelessWidget {
  final int index;

  choices({required this.index});

  List Choices = ['Paris', 'London', 'Moscow', 'Roma'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.5,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 224, 200, 238),
            elevation: 10,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Score_screen()),
            );
          },
          child: Center(
            child: Text(
              Choices[index],
              style: GoogleFonts.pacifico(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
