import 'package:flutter/material.dart';
import 'package:project1/home_scrine/showmydialogg.dart';

class Animal extends StatefulWidget {
  const Animal({super.key});

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  List animal = [
    {
      "name": "cow",
      "age": 12,
      "t.o.s": "2024/12/2",
      "t.o.vacc": "2024/12/2",
      "t.o.v.v": "2024/11/12"
    },
    {
      "name": "cat",
      "age": 5,
      "t.o.s": "2024/12/2",
      "t.o.vacc": "2024/12/2",
      "t.o.v.v": "2024/11/12"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
            itemCount: animal.length,
            itemBuilder: (context, i) {
              return Card(
                child: Column(
                  children: [
                    Image.asset("assest/images/2.png"),
                    Text('name: ${animal[i]["name"]}')
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: GestureDetector(
        onTap: () async {
          // التنقل إلى صفحة إضافة الحيوان وانتظار البيانات
          final newAnimal = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Showmydialogg()),
          );

          // إضافة الحيوان الجديد إذا تم إرجاع بيانات
          if (newAnimal != null) {
            setState(() {
              animal.add(newAnimal);
            });

            // إظهار رسالة نجاح
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('تمت إضافة الحيوان بنجاح!')),
            );
          }
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [Color(0xFF56CCF2), Color(0xFF2F80ED)], // تدرج لوني عصري
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
