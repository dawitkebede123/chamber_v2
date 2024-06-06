// import 'dart:js';

import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Bank_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/SavingAndCredit.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Fintech_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Insurance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/MicroFinance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Capital_Goods_Options.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chamber_of_commerce/widgets/VideoPlayer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Company extends StatefulWidget {
  final Map<String, String> detail;
  Company({super.key,required this.detail});

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  @override
  Widget build(BuildContext context) {
    String sector = widget.detail["sector"].toString();
    String  name =widget.detail["name"].toString();
    String logo = widget.detail["logo"].toString();
    String  profile = widget.detail["profile"].toString();
    String image = widget.detail["adv_image"].toString();
    String video = widget.detail["adv_video"].toString();
    String tel = widget.detail["tel"].toString();
    String email = widget.detail["email"].toString();
    
    String website = widget.detail["website"].toString();
    String fax = widget.detail["fax"].toString();
    var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





      appBar: AppBar(

        backgroundColor:Color.fromARGB(255, 255, 255, 255),
         leading: IconButton(
          
          icon: Icon(Icons.arrow_back),
          onPressed:()=>{
            if(sector == 'Bank'){
              Navigator.push(
              context,
               TransparentRoute(
               
                page:  BankOptions(),
              ),
            ),
            },
             if(sector == 'Insurance'){
              Navigator.push(
              context,
              TransparentRoute(
               
                page:  Insurance_Options(),
              ),
            ),
            },
             if(sector == 'Micro Finance'){
              Navigator.push(
              context,
               TransparentRoute(
               
                page:  MicroFinance_Options(),
              ),
            ),
            },
             if(sector == 'FinTech'){
              Navigator.push(
              context,
              TransparentRoute(
               
                page:  Fintech_Options(),
              ),
            ),
            },
            //   if(sector == 'Telecom'){
            //   Navigator.push(
            //   context,
            //    TransparentRoute(
               
            //     page:  Telecom_Options(),
            //   ),
            // ),
            // },
              if(sector == 'Capital Goods'){
              Navigator.push(
              context,
              TransparentRoute(
               
                page:  SavingAndCredit(),
              ),
            ),
            },
           
            }
          ),
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title: Text(
          sector,
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
           padding: const EdgeInsets.only(left: 20.0,right: 20,top: 4),
           child: Container(
            width: MediaQuery.of(context).size.width*0.8,
             alignment: Alignment.center,
               height: 126,
                         //             padding: EdgeInsets.only(
                         //  left: MediaQuery.of(context).size.width * 0.01,
                         //                //  right: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
                         //  top: MediaQuery.of(context).size.height * 0.05,
                         //   // 5% of screen height 
                         //      ),
             decoration: BoxDecoration(
                        border: Border.all(
           color: Color.fromARGB(255,229,234,232), // Set border color
           width: 1.0,
                        ),
           borderRadius:BorderRadius.circular(20), // Set border width
                    
                      ),  
                     child: Padding(
                       padding: const EdgeInsets.only(top: 4.0),
                       child: Column(
                         children: [
                             Image.asset(logo,
                                      width:MediaQuery.of(context).size.width * 0.20,
                                      ),
                           Text(name,
              style: const TextStyle(
                    fontSize: 16, // Increase font size for heading-like appearance
                    fontWeight: FontWeight.bold, // Make the text bold
                ),)
                         ],
                       ),
                     )
                       
                     
            //           Row(
            //            children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 40.0,right: 40,top: 10),
            //   child: Column(children: [
            //   // text 
            //   Image.asset(logo,
            //   //  width:MediaQuery.of(context).size.width * 0.20,
            //    ),
                         
            //   Text(name,
            //   style: const TextStyle(
            //         fontSize: 16, // Increase font size for heading-like appearance
            //         fontWeight: FontWeight.bold, // Make the text bold
            //     ),)
              
            //     //          SizedBox(
            //     //           width:MediaQuery.of(context).size.width * 0.5 ,
            //     //            child: Center(
            //     //       child: Text(name,
            //     //  style: const TextStyle(
            //     //  fontSize: 18, // Increase font size for heading-like appearance
            //     //  fontWeight: FontWeight.bold, // Make the text bold
            //     //         ),),
            //     //            ),
                           
            //     //          ), 
            //     //          Image.asset(logo, width:MediaQuery.of(context).size.width * 0.20, ),
            //              //  Text("Bank",
            //              //    style: TextStyle(
            //              //        fontSize: 9, // Increase font size for heading-like appearance
            //              //        fontWeight: FontWeight.bold, // Make the text bold
            //              //    ),)
            //                ],),
            // ),
            // //              SizedBox(
            // // width:  MediaQuery.of(context).size.width * 0.2,
            // // // height: 70,
            // // // child: SvgPicture.asset('assets/images/air.svg'),
            // // // decoration: BoxDecoration(
            // // //   border: Border.all(color: Colors.black)
            // // // ),
            
            // // child: Image.asset(logo, width:MediaQuery.of(context).size.width * 0.20, ),
            // //              )
            //              // SvgPicture()
            //            ],
                       
            //            )
                         ///place holder for slider 
                         // child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
                      ),
         ),
        // Container(
        // child:Text("Almanac / Bank / Awash Bank ")

        // ),
        SizedBox(height: 20,),
        if(video!="")
       Container(
          height: 200,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(20)),
       child: Padding(padding: EdgeInsets.all(30),
       child:Center(
          child: VideoPlayerWidget(videoUrl: video,),
        ))
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 16),
          child: Container(
           child:Image.asset(image),
          ),
        ),
         Container(
                    width: 200,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 24),
                      child: Container(child: Text(profile,textAlign: TextAlign.justify,style: TextStyle(fontSize: 14))),
                    )),
                
                         if(tel !="")
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,right: 20),
                         child: 
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
                       ),
                       const SizedBox(height: 5,),
                      
                        if(website !="")
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,right: 20),
                         child: Row(
                         children: [
                          InkWell( // Wrap the content in an InkWell
                             onTap: () {
                               launch("www.google.com"); // Launch the URL in a web browser
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
                       ),
                        SizedBox(height: 5,),
                      
                        if(fax !="")
                       
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,right: 20),
                         child: Row(
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
                             Text(fax,softWrap: true,overflow: TextOverflow.ellipsis,),
                           ],
                         ),
                       ),
                        SizedBox(height: 5,),
                         if(email !="")
                      
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,right: 20),
                         child: Row(
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
                       ),
                 SizedBox(height: 10,),
                  IconButton(
            icon: const Icon(Icons.share),
            onPressed: () async {
              // Replace with your actual sharing logic
              final text = 'Company Name: $name\n Phone: $tel\n Email: $email\n Website: $website\n Fax: $fax\n';
              await Share.share(text);
            },
          ),
       ]), 
        
        //  bottomNavigationBar:const CustomeButtomNavBar(index: 3,),
  
        // BottomAppBar(),
    
      
     );
     
    return scaffold;
  }
}