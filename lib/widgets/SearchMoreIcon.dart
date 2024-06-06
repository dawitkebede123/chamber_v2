import 'package:chamber_of_commerce/widgets/Filter.dart';
import 'package:flutter/material.dart';

class SearchFieldMoreIcon extends StatelessWidget {
  const SearchFieldMoreIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){
               const Column(
          children: [
          Checkbox(value: false, onChanged: onChanged),
          Checkbox(value: false, onChanged: onChanged)
            ]
          );

              },
              );
  }
}