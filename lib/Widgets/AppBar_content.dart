import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class content extends StatelessWidget {
  const content({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('1/4', style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        Text('General Test',
        style:GoogleFonts.satisfy(color: Colors.white,
        fontSize: 35),),
        //Image.asset('images/ExamLogo.png',height: 3,width: 3,),
        Icon(Icons.access_time, size: 30,),
      ],
    );
  }
}