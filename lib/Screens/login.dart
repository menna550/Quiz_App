import 'package:flutter/material.dart';

import '../Global/Quiz_data.dart';
import 'Category_Screen.dart';

class login_screen extends StatefulWidget {
  login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideContainerController;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _slideContainerController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _slideContainerController.forward();
  }

  bool passwordSecured = true;

  @override
  Widget build(BuildContext context) {
    //first container
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 211, 11),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/pngwing.com.png",
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(_slideContainerController),
            child: Container(
              // height:MediaQuery.of(context).size.height* 2/3 ,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(219, 231, 255, 224),
                  borderRadius: BorderRadius.circular(50)
                  //   topLeft: Radius.circular(50),
                  //   topRight: Radius.circular(50),
                  // ),
                  ),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    //Username field
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextFormField(
                        controller: userName,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*Please enter Your username";
                          } else if (value.length < 8) {
                            return "*Should be more than 8 characters";
                          }
                          final regex = RegExp(r'^[A-Z]');
                          if (!regex.hasMatch(value)) {
                            return "The first character must be capital";
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: ' Username',
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.person),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*Please enter Your email";
                          }
                          final regex = RegExp(
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.com$');
                          if (!regex.hasMatch(value)) {
                            return "Please enter a valid email";
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'Email',
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.account_circle),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //password
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextFormField(
                        obscureText: passwordSecured,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*Please enter your passwer";
                          } else if (value.length < 9) {
                            return "*Should be more than 9 characters";
                          }
                          final regex = RegExp(
                              r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})');
                          if (!regex.hasMatch(value)) {
                            return 'Please enter a strong password\n*contains capital , small , numbers and special characters';
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: ' Password',
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.https),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordSecured = !passwordSecured;
                                });
                              },
                              icon: Icon(passwordSecured
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          // Add any other desired styling or customization
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        const Text(
                          "New to quiz app ?",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Register",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        CategoryScreen()));
                          }
                        },
                        child: const Text(
                          "login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.fingerprint,
                      color: Colors.blue,
                      size: 45,
                    ),
                    // Image.asset(
                    //   'images/finger.png',
                    //   height: MediaQuery.of(context).size.height * 0.09,
                    // ),
                    const Text(
                      "use touch ID",
                      style: TextStyle(color: Color.fromARGB(255, 98, 89, 89)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(
                              "Remember me",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "forget password?",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
