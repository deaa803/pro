import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  final Icon icon;
  final String hint;
  final TextEditingController myctrl;
  const Customtext(
      {super.key,
      required this.hint,
      required this.myctrl,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(20),
          child: icon,
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return "it is null";
        }
        return null;
      },
    );
  }
}
