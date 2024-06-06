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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SavingAndCredit extends StatelessWidget {
 
 final List<Map<String,dynamic>> data = [
 
 


 ];
  final saving = [
    "assets/images/almanac_lists/micro_finance_logos/2.png"
 ];
final Name = [
   "Amigos Saving and Credit Cooperative"
 ];
  // const SavingAndCredit({super.key});
  
  final List<Map<String, String>> detail = [
   {
      "sector":"Micro Finance",
     "name": "Amigos Saving and Credit Cooperative",
     "logo": "assets/images/almanac_lists/micro_finance_logos/2.png",
     "adv_image":"assets/images/almanac_lists/adv/16.jpg",
     "adv_video":"",
     "profile": "10 years from now in 2005 E.C. 20 friends (ie. ‘Amigos’) planned and founded Amigos saving and credit cooperation with a capital of only 9,000ETB. Since then, our company has lived to fulfill its purpose of making its members successful by providing the most suitable and flexible financial service products. Amigos is well known to consider and treat its member customers and staff as family. Right now Amigos sacco has more that Six thousand members, nearly 80 employees and a total asset of one billion five hundred million birr.",
     "tel": "8511",
     "email": "info@amigossacco.net",
     "website":"www.amigossaccp.net",
     "fax":""
   },
  ]; 
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
          'Saving And Credit',
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
                  height: 600,
                   child: ListView.builder(
                     itemCount: saving.length,
                     itemBuilder: (context, index) {
                       final String icon = saving[index];
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