// import 'dart:js';

import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Bank_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/SavingAndCredit.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Fintech_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Insurance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/MicroFinance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Capital_Goods_Options.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chamber_of_commerce/widgets/VideoPlayer.dart';
import 'package:share_plus/share_plus.dart';


class CompanyDescription extends StatefulWidget {
  final Map<dynamic, dynamic> detail;
  CompanyDescription({super.key,required this.detail});

  @override
  State<CompanyDescription> createState() => _CompanyDescriptionState();
}

class _CompanyDescriptionState extends State<CompanyDescription> {
   Future<String> storeImageInFirebase(String fileName) async {
  try {
    final storage  = FirebaseStorage.instance.ref();
       final images = storage.child('media');
       final imageRef = images.child(fileName);
       	



       final networkImageUrl = await imageRef.getDownloadURL();
      //  print(networkImageUrl);
    return networkImageUrl;
  } on FirebaseException catch (e) {
    // Handle potential errors
    print('Error storing image: ${e.code} - ${e.message}');
    return ''; // Or throw an exception for further handling
  }
}  
  @override
  Widget build(BuildContext context) {
    // String sector = widget.detail["sector"].toString();
    String  name =widget.detail['Account Name'].toString();
    String logo = widget.detail["logo"].toString();
    String  profile = '';
    String image = widget.detail["Image"].toString();
    // print('test');
    // print(image);
    String video = widget.detail["Video"].toString();
    String tel = widget.detail["Tel"].toString();
    String email = widget.detail["E-mail"].toString();
    
    final website = widget.detail["Web"];
    final sector = widget.detail["Field Of Business"];
    final sub_sector = widget.detail["SIT+A1:I15802C Description"];
    // String fax = widget.detail["fax"].toString();
     Future<String> imageUrlFuture = storeImageInFirebase(image);
     Future<String> logoUrlFuture = storeImageInFirebase(logo);
    Future<String> videoUrlFuture = storeImageInFirebase(video);
    var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





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
                               Container(
                                  width:MediaQuery.of(context).size.width * 0.20,
                                child: FutureBuilder<String>(
                                   future: logoUrlFuture,
                                   builder: (context, snapshot) {
                                     if (snapshot.hasData) {
                                       return Image.network(snapshot.data!); 
                                       // print("test");// Use the downloaded URL
                                     } else if (snapshot.hasError) {
                                       return Text('Error: ${snapshot.error}'); // Handle errors
                                     }
                               
                                     // Display a loading indicator while waiting
                                     return CircularProgressIndicator();
                                   },
                                 ),
                               
                               ),
                           Text(name,
              style: const TextStyle(
                    fontSize: 16, // Increase font size for heading-like appearance
                    fontWeight: FontWeight.bold, // Make the text bold
                ),)
                         ],
                       ),
                     )
                       
                     
          
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
        child: Container(
            //  width:MediaQuery.of(context).size.width * 0.20,
           child: FutureBuilder<String>(
    future: videoUrlFuture,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
       return VideoPlayerWidget(videoUrl:snapshot.data!);
        // return Image.network(snapshot.data!); 
        // print("test");// Use the downloaded URL
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}'); // Handle errors
      }

      // Display a loading indicator while waiting
      return CircularProgressIndicator();
    },
  ),

          ),
          // child: VideoPlayerWidget(videoUrl: video,),
        ))
        ),
        if(image!='')
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 16),
          child:  Container(
            //  width:MediaQuery.of(context).size.width * 0.20,
           child: FutureBuilder<String>(
    future: imageUrlFuture,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Image.network(snapshot.data!); 
        // print("test");// Use the downloaded URL
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}'); // Handle errors
      }

      // Display a loading indicator while waiting
      return CircularProgressIndicator();
    },
  ),

          ),
        ),
        Padding(padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
        Text("Sector: $sector"), 
        Text("Sub Sector: $sub_sector"),
          ],
        ),
        ),
       
        if(profile !='')
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
                      
                        if(website !=null)
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,right: 20),
                         child: Row(
                         children: [
                          InkWell( // Wrap the content in an InkWell
                             onTap: () {
                               // ignore: deprecated_member_use
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
              final text = ' CompanyDescription Name: $name\n Sector: $sector\n Sub-sector: $sub_sector Sub Phone: $tel\n Email: $email\n Website: $website\n ';
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