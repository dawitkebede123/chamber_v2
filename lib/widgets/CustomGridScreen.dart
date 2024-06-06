// import 'package:flutter/material.dart';

// class CustomGridScreen extends StatelessWidget {
//    CustomGridScreen({super.key,required this.lists});
//    List <Map<String,dynamic>> lists;
//   final double crossAxisSpacing;
//   final double mainAxisSpacing;
//   final int crossAxisCount;
//   final Widget Function(BuildContext context, Map<String, dynamic> itemData) itemBuilder;

//   const CustomGridScreen({
//     Key? key,
//     required this.lists,
//     this.crossAxisSpacing = 10.0, // Default spacing between items
//     this.mainAxisSpacing = 10.0, // Default spacing between rows
//     this.crossAxisCount = 2, // Default number of items per row
//     required this.itemBuilder, // Function to build each grid item
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder( gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         mainAxisSpacing: mainAxisSpacing,
//         crossAxisSpacing: crossAxisSpacing,
//       ),
//       itemBuilder: itemBuilder);
//   }
// }

// Widget buildItem(BuildContext context, Map<String, dynamic> itemData) {
//   return Container(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//       children: [
//         Image.asset(itemData['image']), // Assuming images are in assets
//         Text(itemData['title']),
//         Text(itemData['description'], style: TextStyle(fontSize: 12.0)),
//       ],
//     ),
//   );
// }
