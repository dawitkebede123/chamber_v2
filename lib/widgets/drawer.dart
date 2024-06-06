import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/AboutUs.dart';
import 'package:flutter/material.dart';

class TwoButtonWidget extends StatelessWidget {
  const TwoButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute buttons evenly
      children: [
        TextButton(
          onPressed: () {
            // Handle button 1 press logic here (e.g., print a message)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const About()),
            );
          },
          child: const Text('About us'),
        ),
        TextButton(
          onPressed: () {
            // Handle button 2 press logic here (e.g., navigate to a page)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
          child: const Text('administrator'),
        ),
      ],
    );
  }
}
