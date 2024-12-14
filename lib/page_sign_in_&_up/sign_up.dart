// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:project1/page_sign_in_&_up/already_have_account.dart';
import 'package:project1/page_sign_in_&_up/curd.dart';
import 'package:project1/page_sign_in_&_up/linkapi.dart';
import 'package:project1/page_sign_in_&_up/login_one.dart';
import 'package:project1/page_sign_in_&_up/textformfild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formstate = GlobalKey();
  final Crud _crud = Crud();

  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  signup() async {
    // ignore: unused_local_variable
    var response = await _crud.postrequest(linksingup, {
      "username": name.text,
      "emial": email.text,
      "password": password.text
    });
    //response['status'] == "success"
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("singup"),
      ),
      body: Form(
          key: formstate,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assest/images/ch.png",
                  height: 250,
                ),
                SizedBox(
                    width: 350,
                    child: Customtext(
                      icon: Icon(Icons.person),
                      myctrl: name,
                      hint: "name",
                    )),
                Container(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                      width: 340,
                      child: Customtext(
                        icon: Icon(Icons.email),
                        myctrl: email,
                        hint: "email",
                      )),
                ),
                Container(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                      width: 340,
                      child: Customtext(
                        icon: Icon(Icons.lock),
                        myctrl: password,
                        hint: "password",
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 340,
                  child: ElevatedButton(
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "login",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                      onPressed: () {
                        signup();
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                AlreadyHaveAccount(press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginOne();
                  }));
                })
              ],
            ),
          )),
    );
  }
}
