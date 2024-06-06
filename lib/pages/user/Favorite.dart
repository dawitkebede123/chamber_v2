// import 'package:chamber_of_commerce/pages/user/Home.dart';
// import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
// import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
// import 'package:chamber_of_commerce/widgets/GridScreen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class Favorite extends StatefulWidget {
//    const Favorite({super.key});
 
//   @override
//   State<Favorite> createState() => _FavoriteState();
// }

// class _FavoriteState extends State<Favorite> {
//     List <Map<String,dynamic>> Companies = [
//     {
//      "company_Name":"Awash",
//      "Image":"assets/images/awash_logo.svg"
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {

//      var scaffold = Scaffold(
      
      
       





//       appBar: AppBar(
//         backgroundColor:Color.fromARGB(255, 255, 241, 209),
//          leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed:()=>{
//            Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Home()),
//             ),
//             }
//           ),
//         // padding: const EdgeInsets.all(16.0), // Add padding on all sides
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(30.0), // Set border radius
//     ),
       
//         title:const Text(
//           'Favorite',
//           style: TextStyle(
//            color: Colors.black,
//            fontWeight: FontWeight.bold,
//            fontSize: 18,
//           ),
//         ),
//        //should be replace by botton
//         actions: [
//         Padding(padding: EdgeInsets.only(right: 20),
//          child:  SvgPicture.asset('assets/images/chamber_icon.svg')
//           ,),
         
//     ],
//         elevation: 0.0,//remove shadow
//         centerTitle: true,
//       ),
      
//       body:

//          ListView.builder(
//           itemCount: Companies.length,
//           itemBuilder: (context, index) {
//             return Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(Companies[index]['company_Name']),
//                   ),
//                 ),
//                 const SizedBox(width: 8.0), // Add spacing between containers
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(2.0),
//                     child: SvgPicture.asset('assets/images/awash_logo.svg'), // Replace with image widget if available
//                   ),
//                 ),
//                 const SizedBox(width: 8.0), // Add spacing between containers
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SvgPicture.asset('assets/images/trash.svg'), // Replace with additional data widget
//                   ),
//                 ),
//               ],
//             );
//           },

//         ),
        
      
        
 

      
    
      
//  bottomNavigationBar:const CustomeButtomNavBar(index: 4,),
//     );
//     return scaffold;
//   }
// }