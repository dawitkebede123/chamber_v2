import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
   const MyDropDown({super.key});
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String _selectedValue = 'About Almanac Inquery'; // Initial value

  List<String> dropdownItems = ['About Almanac Inquery',];
  List<String> dropdownItems2 = [ 'About Business Inquery',];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: _selectedValue,
          hint:  Text('Select an option'),
          icon:  Icon(Icons.arrow_drop_down),
          iconSize: 24.0,
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue!; // Update state with new value
            });
          },
          items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        DropdownButton<String>(
          value: _selectedValue,
          hint:  Text('Select an option'),
          icon:  Icon(Icons.arrow_drop_down),
          iconSize: 24.0,
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue!; // Update state with new value
            });
          },
          items: dropdownItems2.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
