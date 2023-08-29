import 'package:flutter/material.dart';
import '../Widgets/category_container.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:html' as html;

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Make the AppBar invisible
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.purple,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Exit app"),
                  content: const Text('Do you want exit the app?'),
                  actions: [
                    TextButton(
                      child: const Text('No'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: const Text('Yes'),
                      onPressed: () {
                        // Use SystemNavigator only in Mobile app
                        // SystemNavigator.pop();
                        html.window.close();
                      },
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          for (int i = 0; i < 6; i++)
          //reusable Widget i created in Widget folder
            CategoryContainer(
              index: i,
            )
          
          //     Expanded(
          //   // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
          //   child: Container(
          //     child: Center(
          //       child: Text(quizName[index!]),
          //     ),
          //     decoration: BoxDecoration(
          //         color: quizColor[index!],
          //         border: Border.all(width: 1, color: Colors.black)),
          //   ),
          // );
        ],
      ),
    );
  }
}