import 'package:flutter/material.dart';

class MyDetail extends StatefulWidget {
  const MyDetail({super.key});

  @override
  State<MyDetail> createState() => _MyDetailState();
}

class _MyDetailState extends State<MyDetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assest/picture/logo vetlink crop2.png",
                width: 50,
              ),
              const Text(" vet", style: TextStyle(color: Colors.blue)),
              const Text("link")
            ],
          ),
        ),
        body: Container(
          width: 250,
          height: 250,
          color: Colors.black,
        ),
      )
    ;
  }
}
