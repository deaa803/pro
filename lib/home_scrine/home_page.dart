import 'package:flutter/material.dart';
import 'package:project1/home_scrine/animal.dart';
import 'package:project1/home_scrine/doctor.dart';
import 'package:project1/home_scrine/my.dart';
import 'package:project1/home_scrine/store_page.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _MainShopState();
}

int selecdedindex = 0;

class _MainShopState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selecdedindex,
          onTap: (valindex) {
            setState(() {
              selecdedindex = valindex;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "store"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_search), label: "doctor"),
            BottomNavigationBarItem(icon: Icon(Icons.pets), label: "my animal"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "my"),
          ],
          selectedFontSize: 15,
          selectedItemColor: const Color.fromARGB(255, 254, 214, 129),
          selectedIconTheme: const IconThemeData(size: 25),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
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
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: Searchone());
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: selecdedindex == 0
            ? const HomePage()
            : selecdedindex == 1
                ? Doctor()
                : selecdedindex == 2
                    ? const Animal()
                    : selecdedindex == 3
                        ? const My()
                        : const Text("data"));
  }
}

// -------------------------------------------------------------------
class Searchone extends SearchDelegate {
  List username = ["naser", "mhdi", "anas", "hamza", "amaar"];
  late List filterlist;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
          itemCount: username.length,
          itemBuilder: (context, i) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text(
                  "${username[i]}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            );
          });
    } else {
      filterlist =
          username.where((element) => element.contains(query)).toList();
      return ListView.builder(
          itemCount: filterlist.length,
          itemBuilder: (context, i) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text(
                  "${filterlist[i]}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            );
          });
    }
  }
}
