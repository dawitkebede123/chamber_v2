import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

void onChanged(params) {
  
}
class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Checkbox(value: false, onChanged: onChanged),
          Checkbox(value: false, onChanged: onChanged)
        ]
    );
  }
}