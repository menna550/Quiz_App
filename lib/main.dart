import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/wallpaper2.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          child:
          Image.asset('images/logo1.png'), 
          ),
          const SizedBox(height: 20),
          const Text(
          'ITI Quiz App',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
            fontStyle: FontStyle.italic,
        ),
      ),
      const Text(
        'We are creative, enjoy our app',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 100,),
      SizedBox(
          width: 400, 
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            onPressed: () {},
            child: const Text('Start', style: TextStyle(fontSize: 30, color: Colors.white),),
          ),
        ),
    ],
  ),
);
  }
}
