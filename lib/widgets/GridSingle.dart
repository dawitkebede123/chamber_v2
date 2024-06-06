import 'package:flutter/material.dart';

class GridSingle extends StatelessWidget {
  final List<String> _items = [
    "Card 1",
    "Card 2",
    "Card 3",
    "Card 4",
    "Card 5",
    "Card 6",
  ];
  GridSingle({super.key});

  @override
  Widget build(BuildContext context) {
   return  GridView.count(
        crossAxisCount: 1, // Three columns
        // childAspectRatio: 1.5, // Aspect ratio for cards (adjust as needed)
        // children: _items.map((String item) => _buildCard(item)).toList(),
     children: [
            // Row(
              const Image(
              image:AssetImage('assets/images/banner.png')
                         // image:SvgPicture.asset('assets/images/chamber-logo.svg').image;
                      ),
            // )
     ],
      );
  }
}