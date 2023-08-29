import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../Cubits/CounterCubit/counter_cubit.dart';
import '../../Cubits/ReplaceUICubit/replace_ui_cubit.dart';

class CounterScreenWithCubit extends StatelessWidget {
  CounterScreenWithCubit({super.key});

  @override
  Widget build(BuildContext context) {
    // sum(1,2,3);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // CounterCubit().increment();

                      context.read<CounterCubit>().increment();
                    },
                    child: Text("+")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      return Text(
                          context.read<CounterCubit>().counter.toString());
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();
                    },
                    child: Text("_"))
              ],
            ),
            SizedBox(
              height: 100,
            ),
            // TextField(
            //   decoration: InputDecoration(
            //       contentPadding: EdgeInsets.all(8),
            //       constraints: BoxConstraints()),
            // ),
            BlocBuilder<ReplaceUiCubit, ReplaceUiState>(
                builder: (context, state) {
              switch (state.runtimeType) {
                case ShowText:
                  return Text("Hello We Are ITI");

                case ShowCubitImage:
                  return SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                        "https://pub.dev/packages/flutter_bloc/versions/8.1.3/gen-res/gen/190x190/logo.webp"),
                  );

                case ShowRedCircle:
                  return Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  );

                default:
                  return Text(" No Button Clicked");
              }

              // if (state is ShowText) {
              //   return Text("Hello We Are ITI");
              // } else if (state is ShowCubitImage) {
              //   return SizedBox(
              //     height: 100,
              //     width: 100,
              //     child: Image.network(
              //         "https://pub.dev/packages/flutter_bloc/versions/8.1.3/gen-res/gen/190x190/logo.webp"),
              //   );
              // } else if (state is ShowRedCircle) {
              //   return Container(
              //     height: 200,
              //     width: 200,
              //     decoration:
              //         BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              //   );
              // } else {
              //   return Text(" No Button Clicked");
              // }
            }),

            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().showText();
                },
                child: Text("Show text")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().showCubitImage();
                },
                child: Text("Show cubit image")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().showRedCircle();
                },
                child: Text("Show the red circle")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().reset();
                },
                child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}






/*  

Why State management? Why not setState?  
1- isolate buisness logic from UI
2- Render what only needs to be rendered (to save our resources)

What is Cubit?
- cubit is a state management design pattern, used to:
1- isolate buisness logic from UI
2- Render what needs to be rendered (to save our resources)


Composition of the cubit:
1- Cubit // where we put our logic (functions and vars)
2- State // Put our states that helps us to change the ui

Bloc/Cubit widgets:
1- Bloc provider/ Multi-Bloc Provider:
the widget that gives me the access to my cubit.

2- Bloc Builder
we rap the part that should be rendered with bloc builder


3- Bloc Listener
4- Bloc Consumer


What is the Idea of cubit?
- as a user, i change the state (Data)
- then the UI Changes depending on the state change.








١- اول ما تعمل كيوبت، اعمله بلوك بروفايدر

*/