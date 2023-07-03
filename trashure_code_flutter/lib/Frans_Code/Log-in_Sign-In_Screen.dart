import 'package:flutter/material.dart';
import 'package:trashure_code_flutter/Frans_Code/signup.dart';
import 'login.dart';

class Login_Sign extends StatefulWidget {
  const Login_Sign({super.key});

  @override
  State<Login_Sign> createState() => _Login_SignState();
}

class _Login_SignState extends State<Login_Sign> {
  var status = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.trashure,
      // appBar: AppBar(title: Text("trashure")),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                // padding: EdgeInsets.only(top: 100),
                // height: 229,
                // color: Colors.deepOrangeAccent,
                child: Image.asset(
              "assets/logo final.jpg",
              cacheHeight: 229,
            )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          status = "login";
                          print(status);
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromRGBO(153, 235, 60, 100),
                            decoration: status == "login"
                                ? TextDecoration.underline
                                : null,
                            fontSize: 15),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          status = "sign-up";
                          print(status);
                        });
                      },
                      child: Text(
                        "Sign-Up",
                        style: TextStyle(
                            color: Color.fromRGBO(153, 235, 60, 100),
                            decoration: status == "sign-up"
                                ? TextDecoration.underline
                                : null,
                            fontSize: 15),
                      ))
                ],
              ),
            ),
            Container(child: status == "login" ? Login_Form() : Sign_Form()),
          ]),
    );
  }
}
