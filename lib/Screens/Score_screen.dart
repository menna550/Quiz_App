import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Screens/OpeningScreen.dart';

class Score_screen extends StatelessWidget {
  const Score_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 199, 231),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Menna\nYour score is 9/10',
              style: GoogleFonts.caveat(
                color: Color.fromARGB(255, 117, 58, 128),
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 117, 58, 128),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
      
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const OpeningScreen(),
                    ),
                  );
                },
                child: Text('Reset',style: TextStyle(fontSize: 15),)
                )
          ],
        ),
      ),
    );
  }
}
