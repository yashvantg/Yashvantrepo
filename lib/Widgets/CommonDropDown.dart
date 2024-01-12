import 'package:flutter/material.dart';

class CommonDropDown extends StatelessWidget {
  final List<String> items;
  final String value;
  final String labeltext;
  final String hinttext;
  final Function(String?) Onchange;
  final String? Function(String?) validator;

  const CommonDropDown({
    super.key,
    required this.Onchange,
    required this.items,
    required this.value,
    required this.labeltext,
    required this.validator,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      hint: Text(hinttext),
      value: value.isEmpty ? null : value,
      decoration: InputDecoration(labelText: labeltext),
      validator: validator,
      items: items
          .map<DropdownMenuItem<String>>(
            (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: 15),
              ),
            ),
          )
          .toList(),
      onChanged: Onchange,
      isExpanded: true,
    );
  }
}
