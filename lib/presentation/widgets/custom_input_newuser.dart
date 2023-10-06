import 'package:flutter/material.dart';

class CustomInputNewUser extends StatelessWidget {
  final String? hintText;
  final String nameInput;
  final IconData? icon;
  const CustomInputNewUser(
      {super.key, this.hintText, required this.nameInput, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameInput,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: Icon(
                  icon,
                  color: Colors.grey,
                )),
          ),
        )
      ],
    );
  }
}
