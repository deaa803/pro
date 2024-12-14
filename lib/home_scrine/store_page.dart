import 'package:flutter/material.dart';
import 'package:project1/home_scrine/diatels.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              children: [
                Image.asset(
                  "assest/images/2.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assest/picture/logo vetlink crop2.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assest/images/2.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assest/picture/logo vetlink crop2.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            height: 40,
            child: const Text(
              "new arrivals",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Diatels();
                }));
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    "assest/images/2.png",
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  )),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Diatels();
                }));
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    "assest/images/2.png",
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  )),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Diatels();
                }));
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    "assest/images/2.png",
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  )),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            height: 40,
            child: const Text(
              "for you",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Diatels();
                    }));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assest/images/2.png",
                          height: 150,
                        ),
                        const Text(
                          "cat food",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const Text(
                          "cat food",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 40)),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Diatels();
                              }));
                            },
                            icon: const Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Diatels();
                    }));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assest/images/2.png",
                          height: 150,
                        ),
                        const Text(
                          "cat food",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const Text(
                          "cat food",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 40)),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Diatels();
                              }));
                            },
                            icon: const Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Diatels();
                    }));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assest/images/2.png",
                          height: 150,
                        ),
                        const Text(
                          "cat food",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const Text(
                          "cat food",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 40)),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Diatels();
                              }));
                            },
                            icon: const Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            height: 40,
            child: const Text(
              "trend",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Diatels();
                    }));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset("assest/images/2.png"),
                        const Text("cat food"),
                        const Text("hghghghg"),
                        const Text(
                          "jkjkjj",
                          style: TextStyle(color: Colors.orange),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 40)),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Diatels();
                              }));
                            },
                            icon: const Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Diatels();
                    }));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset("assest/images/2.png"),
                        const Text("cat food"),
                        const Text("hghghghg"),
                        const Text(
                          "jkjkjj",
                          style: TextStyle(color: Colors.orange),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 40)),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Diatels();
                              }));
                            },
                            icon: const Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Diatels();
                    }));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset("assest/images/2.png"),
                        const Text("cat food"),
                        const Text("hghghghg"),
                        const Text(
                          "jkjkjj",
                          style: TextStyle(color: Colors.orange),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 40)),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Diatels();
                              }));
                            },
                            icon: const Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
