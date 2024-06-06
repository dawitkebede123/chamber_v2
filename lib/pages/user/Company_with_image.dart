// import 'dart:js';

import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:chamber_of_commerce/widgets/VideoPlayer.dart';

class CompanyWithImage extends StatefulWidget {
  const CompanyWithImage({super.key});

  @override
  State<CompanyWithImage> createState() => _CompanyWithImageState();
}

class _CompanyWithImageState extends State<CompanyWithImage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





      appBar: AppBar(

        backgroundColor:Color.fromARGB(255, 255, 241, 209),
         leading: IconButton(
          
          icon: Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.push(
              context,
               TransparentRoute(
               
                page:  Home(),
              ),
            ),
            }
          ),
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title:const Text(
          '',
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
      
      body: ListView(
       children: [ 
         Padding(
        padding: 
              EdgeInsets.only(
             left: MediaQuery.of(context).size.width * 0.1,
             right: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
             top: MediaQuery.of(context).size.height * 0.05,
              // 5% of screen height 
                 ),
      // Container(
       child:  Row(
             children:[
             Container(
                height: 140,
         padding: EdgeInsets.only(
             left: MediaQuery.of(context).size.width * 0.01,
            //  right: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
             top: MediaQuery.of(context).size.height * 0.05,
              // 5% of screen height 
                 ),
               decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(255,229,234,232), // Set border color
      width: 1.0,
    ),
      borderRadius:BorderRadius.circular(20), // Set border width

  ),  
        child: Row(
          children: [
            const Column(children: [
              // text 
    Text('Awash International Bank',
             style: TextStyle(
             fontSize: 18, // Increase font size for heading-like appearance
             fontWeight: FontWeight.bold, // Make the text bold
  ),), 
       Text("Bank",
         style: TextStyle(
             fontSize: 9, // Increase font size for heading-like appearance
             fontWeight: FontWeight.bold, // Make the text bold
         ),)
            ],),
            SizedBox(
              width:  MediaQuery.of(context).size.width * 0.1,
              height: 70,
              // child: SvgPicture.asset('assets/images/air.svg'),
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.black)
              // ),
              child: SvgPicture.asset('assets/images/awash.svg'),
            )
            // SvgPicture()
          ],
          
          )
            ///place holder for slider 
            // child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
         ),
        ]),

        ),
        Container(
        child:Text("Almanac / Bank / Awash Bank ")

        ),

      // 
      Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              ///place holder for slider 
              child: SvgPicture.asset('assets/images/almanac_lists/company_profile_image.svg',fit: BoxFit.cover,)
                    
            ),
          ),
        
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/address_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Address "),
                       Text("Airport Road, Addis Ababa, Ethiopia")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/phone_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Phone "),
                       Text("0115 66 54 342")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/mail_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Email "),
                       Text("info@awash.com")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/web_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Website "),
                       Text("awash.com")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/time_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Open Time "),
                       Text("Mon - Sat       10:00 - 19:00")
                      
                    ]
                         
                   )
                   
                 ],
                ),
       ]), 
        
         bottomNavigationBar:const CustomeButtomNavBar(index: 3,),
  
        // BottomAppBar(),
    
      
     );
     
    return scaffold;
  }
}