import 'package:chamber_of_commerce/pages/user/AlmanacListing.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Almanc_Category extends StatelessWidget {
  //icons of almanac category
  final List<String> categories;
  // [
  // "assets/images/almanac_lists/bank.svg",
  //    "assets/images/almanac_lists/Insurance.svg",
  //    "assets/images/almanac_lists/micro_finance.svg", 
  //    "assets/images/almanac_lists/fintech.svg",
  //     "assets/images/almanac_lists/telecom.svg",
  //     "assets/images/almanac_lists/capital_goods.svg",
  // ];
  Almanc_Category({super.key,required this.categories});

  @override
  Widget build(BuildContext context) {
   return  Container(
     height:400,
    width: MediaQuery.of(context).size.width * 1,
     child: GridView.builder(
     
       itemCount:categories.length,
     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust the number of columns here
          crossAxisSpacing: 0.0, // Spacing between columns
          mainAxisSpacing: 16.0, // Spacing between rows
        ),
        itemBuilder: (context,index) {
          final String icon = categories[index];
     
          return GestureDetector(
            child: SvgPicture.asset(icon),
            onTap: (){
               Navigator.push(
              context,
               TransparentRoute(
               
                page:  AlmanacListing(index: index,),
              ),
            );
              // AlmanacListing(index: index);
            },
          );
        },
        ),
   );
  }
}