import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubits/ChangeSelectedValue/change_selected_value_cubit.dart';
import '../../Cubits/LoginCubit/login_cubit.dart';
import '../../Cubits/RadioToggleCubit/radio_toggle_cubit.dart';
import '../../Cubits/ShowHidePassword/show_hide_password_cubit.dart';



class Task8Answer extends StatelessWidget {
  Task8Answer({super.key});

  List<String> filterList = [
    "تمت",
    "تحت المراجعة",
    "المكتملة",
    "الملغية",
    "قيد التنفيذ",
    "اطلب مرة اخرى",
    "قيم الطلب",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              BlocBuilder<ChangeSelectedValueCubit, ChangeSelectedValueState>(
                builder: (context, state) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < filterList.length; i++)
                          InkWell(
                            onTap: () {
                              context
                                  .read<ChangeSelectedValueCubit>()
                                  .changeIndex(i);
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: context
                                              .read<ChangeSelectedValueCubit>()
                                              .selectedIndex ==
                                          i
                                      ? Colors.red
                                      : Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(filterList[i]),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    BlocBuilder<ShowHidePasswordCubit, ShowHidePasswordState>(
                  builder: (context, state) {
                    return TextField(
                      obscureText:
                          context.read<ShowHidePasswordCubit>().isShown,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: context.read<ShowHidePasswordCubit>().isShown
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            context
                                .read<ShowHidePasswordCubit>()
                                .showHidePass();
                          },
                        ),
                        hintText: "Password",
                        // errorBorder: ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 36, 4, 240), width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // border: ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // border:
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                child: BlocBuilder<RadioToggleCubit, RadioToggleState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          value: index,
                          groupValue:
                              context.read<RadioToggleCubit>().currentValue,
                          onChanged: (value) {
                            context
                                .read<RadioToggleCubit>()
                                .toggleRadios(value);
                          },
                          title: Text("Title ${index + 1}"),
                          subtitle: Text("Hello we are ITI"),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                  height: 100,
                  child: Center(child: BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      if (state is LoginLoading) {
                        return CircularProgressIndicator();
                      } else if (state is LogingSuccess) {
                        return ElevatedButton(
                            onPressed: () {
                              context.read<LoginCubit>().logIn();
                            },
                            child: Text("Login"));
                      } else {
                        return ElevatedButton(
                            onPressed: () {
                              context.read<LoginCubit>().logIn();
                            },
                            child: Text("Login"));
                      }
                    },
                  ))),
              SizedBox(
                  height: 100,
                  child: Center(child: BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      if (state is registerLoading) {
                        return CircularProgressIndicator();
                      } else {
                        return ElevatedButton(
                            onPressed: () {
                              context.read<LoginCubit>().register();
                            },
                            child: Text("Register"));
                      }
                    },
                  )))
            ],
          ),
        ),
      ),
    );
  }
}