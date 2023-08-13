import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Screens/login.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wallpaper2.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.height / 3,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Image.asset('images/logo1.png'),
              ),
              
              Text(
                'ITI Quiz App',
                style: GoogleFonts.pacifico(
                  fontSize: 40,
                  color: Colors.amber,
                ),
              ),
              Text(
                'We are creative, enjoy our app',
                style: GoogleFonts.pacifico(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const login_screen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
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
