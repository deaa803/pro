import 'package:flutter/material.dart';

class Showmydialogg extends StatelessWidget {
  const Showmydialogg({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final ageController = TextEditingController();
    final dateController = TextEditingController();

    void showWarning(String message) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('تحذير'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // إغلاق النافذة
              },
              child: const Text('حسنًا'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('إضافة حيوان جديد'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    labelText: 'name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'age',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: dateController,
                decoration: const InputDecoration(
                    labelText: 'dates',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      if (nameController.text.isEmpty ||
                          ageController.text.isEmpty ||
                          dateController.text.isEmpty) {
                        showWarning('الرجاء تعبئة جميع الحقول قبل الإضافة.');
                      } else {
                        // إعداد بيانات الحيوان الجديد
                        final newAnimal = {
                          "name": nameController.text,
                          "age": int.tryParse(ageController.text) ?? 0,
                          "t.o.s": dateController.text,
                          "t.o.vacc": dateController.text,
                          "t.o.v.v": dateController.text,
                        };

                        // إرجاع البيانات إلى الصفحة السابقة
                        Navigator.pop(context, newAnimal);
                      }
                    },
                    child: const Text("adding"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("close"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
