// import 'package:chamber_of_commerce/pages/user/Home.dart';
// import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
// import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
// import 'package:chamber_of_commerce/widgets/GridScreen.dart';
// import 'package:chamber_of_commerce/widgets/SearchField.dart';
// import 'package:chamber_of_commerce/widgets/SearchFieldForDiscovery.dart';
// import 'package:chamber_of_commerce/widgets/TopNav.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class Discovery extends StatefulWidget {
//   const Discovery({super.key});

//   @override
//   State<Discovery> createState() => _DiscoveryState();
// }

// class _DiscoveryState extends State<Discovery> {
//    List <Map<String,dynamic>> Companies = [
//     {
//      "company_Name":"Awash",
//      "sector":"Bank",
//      "Image":"assets/images/awash_logo.svg"
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//   //    final _items =  [
//   //    "assets/images/awash.svg",
//   //    "assets/images/air.svg",
//   //    "assets/images/dashen.svg"
   
   

//   // ];
//      return Scaffold(
//     //  Padding(
//       //  padding: const EdgeInsets.only(top: 20.0),
        
//         //  drawer:const BackButton(
//         //   //  backgroundColor: Colors.white,
//         //  ),
        
         
       
       
       
       
       
//         appBar: AppBar(
//           backgroundColor:Color.fromARGB(255,229,234,232),
//           title: const Expanded(child: SearchFieldForDiscovery(),flex: 1,),
//            shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(30.0), // Set border radius
//            ),
//         ),
         
        
//          body: 
//          Padding(padding: const EdgeInsets.all(20.0),
         
//            child:Column(children: [
       
//              Row(children: [
//               SvgPicture.asset('assets/images/discovery_page_icons/banks.svg' ),
//                const SizedBox(width: 20.0),
//               Text("Banks"),
//               const SizedBox(width: 150.0),
//               TextButton(onPressed:(){}, child: Text('see more')),
       
//             ],),
//              Spacer(),
//               Row(children: [
//               SvgPicture.asset('assets/images/discovery_page_icons/banks.svg' ),
//               const SizedBox(width: 20.0),
//               Text("Insurance"),
//               const SizedBox(width: 130.0),
//               TextButton(onPressed:(){}, child: Text('see more')),
//             ],),
//             Spacer(),
//              Row(children: [
//               SvgPicture.asset('assets/images/discovery_page_icons/banks.svg' ),
//                const SizedBox(width: 20.0),
//               Text("Banks"),
//               const SizedBox(width: 150.0),
//               TextButton(onPressed:(){}, child: Text('see more')),
//             ],),
//           // TopNav(index: 0)
//            ],) 
//             //  SizedBox(width: 220)
            
            
            
            
//             ),
//         // ListView.builder(
//         //     itemCount: Companies.length,
//         //     itemBuilder: (context, index) {
//         //       return Row(
//         //         children: [
//         //           Expanded(
//         //             child: Container(
//         //               padding: const EdgeInsets.all(8.0),
//         //               child: Text(Companies[index]['company_Name']),
//         //             ),
//         //           ),
//         //           const SizedBox(width: 8.0), // Add spacing between containers
//         //           Expanded(
//         //             child: Container(
//         //               padding: const EdgeInsets.all(2.0),
//         //               child: SvgPicture.asset('assets/images/awash_logo.svg'), // Replace with image widget if available
//         //             ),
//         //           ),
//         //           const SizedBox(width: 8.0), // Add spacing between containers
//         //           Expanded(
//         //             child: Container(
//         //               padding: const EdgeInsets.all(8.0),
//         //               child: SvgPicture.asset('assets/images/trash.svg'), // Replace with additional data widget
//         //             ),
//         //           ),
//         //         ],
//         //       );
//         //     },
       
//         //   ),
//         //  ListView(
//           // children: [
//               //  GridScreen(items: _items),
//               //  GridSingle()
//           // ],
//         // ),
          
       
       
        
//         // ListView(
//         //   children: [
       
//         //     ////slider for almanac
//         //     Container(
//         //       ///place holder for slider 
//         //       child: const Image(
//         //       image:AssetImage('assets/images/business_Adv.png')
//         //               ),
//         //     ),
            
//         //    GridView.count(
//         //   crossAxisCount: 3, // Three columns
//         //   childAspectRatio: 1.5, // Aspect ratio for cards (adjust as needed)
//         //   children: _items.map((String item) => _buildCard(item)).toList(),
//         // ),
         
       
//         //   ],
           
           
//         // ),
        
       
//         // addis chamber contact bar
          
//         bottomNavigationBar:const CustomeButtomNavBar(index: 1,),
       
       
//            );
//     //  );
//   }


// }