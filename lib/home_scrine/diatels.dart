import 'package:flutter/material.dart';

class Diatels extends StatefulWidget {
  const Diatels({super.key});

  @override
  State<Diatels> createState() => _DiatelsState();
}

class _DiatelsState extends State<Diatels> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 254, 214, 129),
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
          // ignore: sized_box_for_whitespace
          body: Column(
            children: [
              Card(child: Image.asset("assest/images/2.png")),
              const Center(
                child: Text("food cat"),
              ),
              const Row(
                children: [
                  Text(
                    "mnxbvcvbnhjmklkjlsbnldwlknfdkanfnkfnkdnfdknfknfkdnfdn",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {
                    setState(() {
                      i++;
                    });
                  }, icon: const Icon(Icons.add)),
                  Text("count $i"),
                  IconButton(onPressed: () {
                    setState(() {
                      i--;
                    });
                  }, icon: const Icon(Icons.remove)),
                ],
              ),
              IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart))
            ],
          ));
  }
}
