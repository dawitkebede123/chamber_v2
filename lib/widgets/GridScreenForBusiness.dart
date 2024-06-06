// import 'dart:js';



import 'package:chamber_of_commerce/pages/user/Business_listing.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Company_with_image.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class GridScreenForBusiness extends StatelessWidget {
   List <dynamic> items ;
 //accept a  list to display in a grid
  GridScreenForBusiness({super.key, required this.items});

  
  @override

  
  // }
  Widget build(BuildContext context) {
final List<Map<String, String>> businessCompanyProfile = [
   {
      "sector":"Manufacturing",
     "name": "AARTI STEEL PLC",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/1.mp4",
     "profile": "",
     "tel": "0116673563",
     "email": "",
     "website":"",
     "fax":""
   },];

    return  Expanded(child:
    
      GridView.count(
        crossAxisCount: 3, // Three columns
        childAspectRatio: 1, // Aspect ratio for cards (adjust as needed)
         children:List.generate(items.length, (index) {
    Map<String, dynamic> itemData = items[index];
    final String logo = itemData["logo"];
    final int _index = itemData["index"];
    return _buildCard(logo, _index, context);
  }),

         
  
      ));
  }
}

// Widget buildListItem(){
 
// }
 Widget _buildCard(String item,int _index,  BuildContext context) {
  print(_index);
    return   Container(
      //  width: 94,
      //  height: 250,
       child: GestureDetector(
            // onTap: (){
            //  Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) =>  Business_listing(index: _index,title: 'title',businessCompanyProfile:,)),
            //   );},
          
        // child: Column(children: [
          // SizedBox(height: 50,),
        child: Padding(padding: EdgeInsets.all(10),
            child: SvgPicture.asset(item),

        ) 

        // ],)
             ,)
    );
   
  }