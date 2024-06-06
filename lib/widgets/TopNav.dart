import 'package:chamber_of_commerce/widgets/SearchField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopNav extends StatefulWidget {
  final int index;
  const TopNav({super.key, required this.index});

  @override
  State<TopNav> createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(232, 323, 323, 122),
      // width:MediaQuery.of(context).size.width * 1 ,
      // height: MediaQuery.of(context).size.width * 0.05,
      child: const Row(
      
        children: [
        Icon(Icons.arrow_back),
        SearchField(),
        //  child   color:Color.fromARGB(255,229,234,232),
          // title: const Expanded(child: SearchField(),flex: 0,),
          //  shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(30.0), // Set border radius
      
      ],),
    );
  }
}