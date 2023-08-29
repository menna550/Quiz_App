import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen/Screens/login.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen>
    with TickerProviderStateMixin {
  late AnimationController _slideLogoController;
  late AnimationController _fadeTextController;
  bool _pressed = false;

  @override
  void initState() {
    super.initState();
    //SlideTransition
    _slideLogoController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    //FadeTransition
    _fadeTextController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    //give the order to controller
    _slideLogoController.forward();
    _fadeTextController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            SlideTransition(
              position: Tween<Offset>(
                      begin: const Offset(0, -1), end: const Offset(0, 0))
                  .animate(_slideLogoController),
              child: Image.asset(
                'images/logo1.png',
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
            FadeTransition(
              opacity: _fadeTextController,
              child: Column(
                children: [
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
                ],
              ),
            ),
            const Spacer(),
            AnimatedContainer(
              // Define a duration and a curve for the animation
              duration: const Duration(seconds: 3),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // Change the background color depending on the button state
                  backgroundColor: _pressed ? Colors.blue.withOpacity(0.5) : Colors.orange,
                ),
                onPressed: () {
                  // Toggle the button state when pressed
                  setState(() {
                    _pressed = !_pressed;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => login_screen(),
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
