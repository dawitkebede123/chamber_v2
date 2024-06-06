import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart'; 
class DataContainer extends StatelessWidget {
  final String title = "new";
  final String description = 'description';

  const DataContainer({
    Key? key,
    // required this.title,
    // required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(description),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () async {
              // Replace with your actual sharing logic
              final text = 'Name:$title\n Address:$description';
              await Share.share(text);
            },
          ),
        ],
      ),
    );
  }
}
