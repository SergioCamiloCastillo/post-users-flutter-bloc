import 'package:flutter/material.dart';

class CustomSelectNewUser extends StatefulWidget {
  final List<ItemDropDown> list;
  final String nameInput;
  const CustomSelectNewUser({super.key, required this.list, required this.nameInput});

  @override
  State<CustomSelectNewUser> createState() => _CustomSelectNewUserState();
}

class _CustomSelectNewUserState extends State<CustomSelectNewUser> {
  ItemDropDown? _select;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            widget.nameInput,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            child: DropdownButton(
              hint: const Text('Seleccione...'),
              isExpanded: true,
              underline: const SizedBox(),
              value: _select,
              onChanged: (value) {
                setState(() {
                  _select = value;
                });
              },
              items: widget.list.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item.label),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class ItemDropDown {
  final String label;
  final String value;

  ItemDropDown({required this.label, required this.value});
}
