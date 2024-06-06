import 'package:chamber_of_commerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class Detail extends StatefulWidget {
  final Map<dynamic, dynamic> businessData;

  const Detail({required this.businessData});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final accountNumber = widget.businessData['Account Number'];
    final name = widget.businessData['Company Name'];
    final tel = widget.businessData['Tel'];
    final fax = widget.businessData['Fax'];
    final email = widget.businessData['E-mail'];
    final website = widget.businessData['Website'];
    final sector = widget.businessData['Sector'];
    final subSector = widget.businessData['Sub Sector'];
    // final 
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _handleDelete(accountNumber), // Call delete function on button press
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Number: $accountNumber',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Name: $name',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Telephone: $tel',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Fax: $fax',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 10.0),
            Text('Email: $email'),
            const SizedBox(height: 10.0),
            website != null ? Text('Website: $website') : Container(),
            Text(
              'Sector: $sector',
              style: const TextStyle(fontSize: 18.0),
            ),
          
            Text(
              'Sub Sector: $subSector',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

 void _handleDelete(String identifier) async {
    // try {
    //   // Construct the database reference using the identifier
    //   final dataRef = databaseReference.child('business');

    //   // Delete the record with confirmation
    //   await showDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       title: const Text('Confirm Deletion'),
    //       content: const Text('Are you sure you want to delete this record?'),
    //       actions: [
    //         TextButton(
    //           onPressed: () => Navigator.pop(context),
    //           child: const Text('Cancel'),
    //         ),
    //         TextButton(
    //           onPressed: () async {
    //             Navigator.pop(context);
    //             await dataRef.remove(); // Delete if confirmed
    //             ScaffoldMessenger.of(context).showSnackBar(
    //               const SnackBar(
    //                 content: Text('Record deleted successfully.'),
    //               ),
    //             );
    //           },
    //           child: const Text('Delete'),
    //         ),
    //       ],
    //     ),
    //   );
    // } catch (error) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text('Error deleting record: $error'),
    //     ),
    //   );
    // }
  }

