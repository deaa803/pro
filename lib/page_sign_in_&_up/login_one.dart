import 'package:flutter/material.dart';
import 'package:project1/page_sign_in_&_up/have_account.dart';
import 'package:project1/page_sign_in_&_up/sign_up.dart';
import 'package:project1/home_scrine/home_page.dart';
// import 'package:project1/page_store/store_page.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({super.key});

  @override
  State<LoginOne> createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("login"),
        ),
        body: Form(
            key: formstate,
            child: SingleChildScrollView(
              // margin: const EdgeInsets.all(50),
              // width: 300,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assest/images/2.png",
                      height: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        width: 340,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),

                            // prefix: Icon(Icons.person_2_sharp),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(Icons.person),
                            ),
                            hintText: "username",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "it is null";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                        width: 340,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),

                            // prefix: Icon(Icons.password),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(Icons.lock),
                            ),
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "passowrd";
                            }
                            return null;
                          },
                        ),
                      ),
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
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.blue)),
                          onPressed: () {
                            if (formstate.currentState!.validate()) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const StorePage();
                              }));
                            }
                            // ignore: avoid_print
                            else {}
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    HaveAccount(press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUp();
                      }));
                    })
                  ]),
            )));
  }
}
