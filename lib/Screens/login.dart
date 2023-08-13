import 'package:flutter/material.dart';

import 'Category_Screen.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});
  @override
  Widget build(BuildContext context) {
    //first container
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 21, 211, 11),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Image.asset(
              "images/pngwing.com.png",
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Expanded(
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height ,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(219, 231, 255, 224),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Username field
                    Container(
                      padding: const EdgeInsets.all(0.1),
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: Color.fromARGB(255, 52, 115, 72)),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: ' Username',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          // Add any other desired styling or customization
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //password
                    Container(
                      padding: const EdgeInsets.all(0.1),
                      width: MediaQuery.of(context).size.width * 0.7,
                      //margin: const EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: Color.fromARGB(255, 52, 115, 72)),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: ' Password',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.https),
                          suffixIcon: Icon(Icons.visibility_off),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      CategoryScreen()));
                        },
                        child: const Text(
                          "login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Image.asset(
                      'images/finger.png',
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    const Text(
                      "use touch ID",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ],
        ),
      ),
    );
  }
}
