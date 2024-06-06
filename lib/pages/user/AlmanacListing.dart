import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/AlmanacListing.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Bank_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/SavingAndCredit.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Fintech_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Insurance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/MicroFinance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Capital_Goods_Options.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Company_detail.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlmanacListing extends StatelessWidget {
   final int index;
   AlmanacListing({super.key,required this.index});


  @override
  Widget build(BuildContext context) {
    if(index == 0){
    return  BankOptions();
    };
    if(index == 1){
    return  Insurance_Options();
    };
    if(index == 2){
    return  MicroFinance_Options();
    };
    if(index == 3){
    return Fintech_Options();
    };
    // if(index == 4){
    // return  Telecom_Options();
    // };
    if(index == 4){
    return SavingAndCredit();
    };
   
   return BankOptions(); 
  }
  }

   

