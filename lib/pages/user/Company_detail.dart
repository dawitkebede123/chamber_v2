// import 'dart:js';

// ignore_for_file: deprecated_member_use

import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CompanyDescription.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chamber_of_commerce/widgets/VideoPlayer.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyDetail extends StatefulWidget {
  final Map<dynamic, dynamic> data;
    const CompanyDetail({super.key, required this.data});
 
  @override
  State<CompanyDetail> createState() => CompanyState();
}

class CompanyState extends State<CompanyDetail> {
    

  @override
  Widget build(BuildContext context) {
    // final accountNumber = widget.data['Account Number'];
    final name = widget.data['Account Name'];
    final tel = widget.data['Tel'];
    final mobile = widget.data['Mobile Phone'];
    final email = widget.data['E-mail'];
    final website = widget.data['Web'];
    final isAdv = widget.data['Is_adv'] == "True";
  
    var scaffold = Scaffold(
    
       





      appBar: AppBar(

        // backgroundColor:Color.fromARGB(255, 255, 241, 209),
         leading: IconButton(
          
          icon: Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.of(context).pop(),
            }
          ),
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title: Text(
          name,
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
      
      body: isAdv?CompanyDescription(detail: widget.data): Padding(padding: EdgeInsets.all(10),
      child:  Container(
         decoration: BoxDecoration(
    
              color: const Color.fromARGB(255,229,234,232),

      borderRadius:BorderRadius.circular(20), // Set border width

  ),
        // color: const Color.fromARGB(255,229,234,232),
        //  width: MediaQuery.of(context).size.width * 0.8,
         height: 230,
        child:  Padding(padding: EdgeInsets.all(5),
        child: Column(children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          // Row(
          //   children: [
          //      SvgPicture.asset('assets/images/phone_icon.svg'),
          //     SizedBox(width: 10,),
          //     Text(tel),
          //   ],
          // ),
          SizedBox(height: 5,),
                if(tel !="")
                     Row(
                       children: [
                         InkWell( // Wrap the content in an InkWell
                 onTap: () {
                   launch('tel:$tel'); // Launch the phone dialer with the number
                 },
                        child: Row(
                           children: [
                              Container(
                               // width: 20,
                               // height: 20,
                               decoration: BoxDecoration(
                     
                         color: Color.fromARGB(255, 255, 255, 255),
                 
                 borderRadius:BorderRadius.circular(999), // Set border width
                 
                   ),
                               child: SvgPicture.asset('assets/images/vector1.svg',width: 10,height: 10,)),
                             SizedBox(width: 10,),
                             Text(tel,softWrap: true,overflow: TextOverflow.ellipsis,),
                           ],
                         ),),
                       ],
                     ),
                     SizedBox(height: 5,),
                    
                      if(website !="")
                     Row(
                     children: [
                      InkWell( // Wrap the content in an InkWell
                         onTap: () {
                           launch(website); // Launch the URL in a web browser
                 },
                       child:Row(
                       children: [
                          Container(
                           // width: 20,
                           // height: 20,
                           decoration: BoxDecoration(
                     
                         color: Color.fromARGB(255, 255, 255, 255),
                 
                 borderRadius:BorderRadius.circular(999), // Set border width
                 
                   ),
                           child: SvgPicture.asset('assets/images/vector.svg',width: 10,height: 10,)),
                         SizedBox(width: 10,),
                         Text(website,softWrap: true,overflow: TextOverflow.ellipsis,),
                       ],
                     )),],),
                      SizedBox(height: 5,),
                      if(mobile !="")
                     Row(
                       children: [
                          Container(
                           // width: 10,
                           // height: 10,
                           decoration: BoxDecoration(
                     
                         color: Color.fromARGB(255, 255, 255, 255),
                 
                 borderRadius:BorderRadius.circular(999), // Set border width
                 
                   ),
                           child: SvgPicture.asset('assets/images/vector3.svg',width: 10,height: 10,)),
                         SizedBox(width: 10,),
                         Text(mobile,softWrap: true,overflow: TextOverflow.ellipsis,),
                       ],
                     ),
                      SizedBox(height: 5,),
                       if(email !="")
                     Row(
                   children: [
                     InkWell( // Wrap the content in an InkWell
                 onTap: () {
                   launch('mailto:$email'); // Launch email app with recipient
                 },
                 child: Row(
                       children: [
                          Container(
                           // width: 20,
                           // height: 20,
                           decoration: BoxDecoration(
                     
                         color: Color.fromARGB(255, 255, 255, 255),
                 
                 borderRadius:BorderRadius.circular(999), // Set border width
                 
                   ),
                           child: SvgPicture.asset('assets/images/vector2.svg',width: 10,height: 10,)),
                          SizedBox(width: 10,),
                         Text(email,softWrap: true,overflow: TextOverflow.ellipsis,),
                       ],
                     ),)]),
          // const Column(
          //   children: [
              
          //   ],
          // )
        ],))
         
      )),
        
         bottomNavigationBar:const CustomeButtomNavBar(index: 3,),
  
        // BottomAppBar(),
    
      
     );
     
    return scaffold;
  }
}