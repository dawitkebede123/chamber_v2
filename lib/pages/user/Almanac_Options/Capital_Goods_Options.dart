import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/AlmanacListing.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/Almanac_Category.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/expandedPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Capital_Goods_Options extends StatelessWidget {
 
//  final List<Map<String,dynamic>> data = [
//   {
//         "title": "Addis Capital Goods Finance Business S.C.",
//         "content": "+251-111-262-445 / +251-111-262-411"
//     },
//     {
//         "title": "Debub Capital Goods Finance Business S.C.",
//         "content": "+251-462-125-191; +251-936-475-076"
//     },
//     {
//         "title": "Ethio-Lease Ethiopian Capital Goods Finance Business S.C.",
//         "content": "+251-116-393-397/ +251-116-393-395/ +251-930- 681-819"
//     },
//     {
//         "title": "Kaza Capital Goods Finance Business S.C.",
//         "content": "+251 -342-400-087/+251-344-400-085/ +251-930-469-095"
//     },
//     {
//         "title": "Oromia Capital Goods Finance Business S.C.",
//         "content": "+251-115-571-307/251-115-571-337/251-911-019-828"
//     },
//     {
//         "title": "Waliya Capital Goods Finance Business S.C.",
//         "content": "+251-582-206-780/251-582-206-728/251-930-111-703"
//     }
  

//  ];
  final Telecom = [
  
 ];
final Name = [
    
 ];
  final List<Map<String, String>> detail = [
    
  ]; 
  // const Capital_Goods_Options({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       

      appBar: AppBar(
        backgroundColor:Colors.white,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.push(
              context,
               TransparentRoute(
               
                page:  Almanac(),
              ),
            ),
            }
          ),
      
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0), // Set border radius
    ),
       
        title:const Text(
          'Capital Goods',
          style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18,
          ),
        ),
       //should be replace by botton
         actions: [
          Padding(padding: EdgeInsets.only(right: 20),
         child:  SvgPicture.asset('assets/images/chamber_icon.svg')
          ,),
         
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
    
      body:
           Padding(
             padding:  EdgeInsets.only(left: 20.0,right: 20,top: 4),
             child: Column(
               children: [
                 SizedBox(
                  height: 400,
                   child: ListView.builder(
                     itemCount: Telecom.length,
                     itemBuilder: (context, index) {
                       final String icon = Telecom[index];
                       final String name = Name[index]; // Assuming Name has data for each bank
                   
                       return Column(
                         children: [
                           Container(
                             child: GestureDetector(
                               onTap: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => Company(detail: detail[index])),
                                 );
                               },
                               child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                 child: Row(
                                   children: [
                   Container(
                     width: 80.0,
                     height: 80.0,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(
                         color: Color.fromARGB(255, 229, 234, 232),
                         width: 1.0,
                       ),
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     child: Image.asset(icon),
                   ),
                   SizedBox(width: 20.0),
                   Expanded(
                     child: Text(
                       name,
                       style: TextStyle(fontWeight: FontWeight.bold),
                       textAlign: TextAlign.left,
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                     ),
                   ),
                                   ],
                                 ),
                               ),
                             ),
                           
                           
                             
                           ),
                         
                         ],
                       );
                     },
                   ),
                 ),
                //  const Padding(
                //    padding: EdgeInsets.only(left: 20.0,right: 20,),
                //    child: Row(
                //      children: [
                //        Text("Usefull Addresses",style: TextStyle(fontSize: 16.0),textAlign: TextAlign.center,)
                //      ],
                //    ),
                //  ),
                   // SizedBox(height: 20,),
            // Expanded(child: ExpandedPanel(data: data))
               ],
             ),
           ),  
          bottomNavigationBar:const CustomeButtomNavBar(index: 3,),


    );
    return scaffold;
  }

}