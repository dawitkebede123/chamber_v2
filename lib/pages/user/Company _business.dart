// import 'dart:js';

import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Bank_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/SavingAndCredit.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Fintech_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Insurance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/MicroFinance_Options.dart';
import 'package:chamber_of_commerce/pages/user/Almanac_Options/Capital_Goods_Options.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chamber_of_commerce/widgets/VideoPlayer.dart';
import 'package:share_plus/share_plus.dart';

class CompanyBusiness extends StatefulWidget {
  final Map<String, String> detail;
  CompanyBusiness({super.key,required this.detail});

  @override
  State<CompanyBusiness> createState() => _CompanyBusinessState();
}

class _CompanyBusinessState extends State<CompanyBusiness> {

  // a uploadFile()=>{
  // final storage  = FirebaseStorage.instance.ref('Query7');
  //      final images = storage.child('images');
  //      final imageRef = images.child("file name");
  //      final networkImageUrl = await imageRef.getDownloadURL();
  // };
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

     Future<String> imageUrlFuture = storeImageInFirebase(image);

  
    var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      





      appBar: AppBar(

        backgroundColor:Color.fromARGB(255, 255, 255, 255),
         leading: IconButton(
          
          icon: Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.pop(context),
           
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
                          if(logo!="")
                           Container(
             width:MediaQuery.of(context).size.width * 0.20,
           child: FutureBuilder<String>(
    future: imageUrlFuture,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Image.network(snapshot.data!); // Use the downloaded URL
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}'); // Handle errors
      }

      // Display a loading indicator while waiting
      return CircularProgressIndicator();
    },
  ),

          ),
                             
                            //  Image.asset(logo,
                            //           width:MediaQuery.of(context).size.width * 0.20,
                            //           ),
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
        if(image!="")
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 16),
          child: Container(
           
           child: FutureBuilder<String>(
    future: imageUrlFuture,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Image.network(snapshot.data!); // Use the downloaded URL
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}'); // Handle errors
      }

      // Display a loading indicator while waiting
      return CircularProgressIndicator();
    },
  ),

          ),
        ),
        if(profile!="")
         Container(
                    width: 200,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 24),
                      child: Container(child: Text(profile,textAlign: TextAlign.justify,style: TextStyle(fontSize: 14))),
                    )),
                
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/phone_icon.svg',width: 20,height: 20,)
                  
                   ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Phone ",textAlign: TextAlign.start,style: TextStyle(fontSize: 10)),
                       Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Text(tel,softWrap: true,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10)))
                      
                    ]
                         
                   )
                   
                 ],
                                 ),
                                 SizedBox(height: 10,),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/mail_icon.svg',width: 20,height: 20,)
                  
                   ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Email ",style: TextStyle(fontSize: 10)),
                       Text(email,softWrap: true,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10))
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 SizedBox(height: 10,),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/web_icon.svg',width: 20,height: 20,)
                  
                   ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Website ",style: TextStyle(fontSize: 10)),
                       Text(website,softWrap: true,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10))
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 SizedBox(height: 10,),
                Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/fax_icon.svg',width: 20,height: 20,)
                  
                   ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Fax ",style: TextStyle(fontSize: 10)),
                       Text(fax,style: TextStyle(fontSize: 10))
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 SizedBox(height: 10,),
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                                  icon: const Icon(Icons.share),
                                  onPressed: () async {
                                    // Replace with your actual sharing logic
                                    final text = 'CompanyBusiness Name: $name\n Phone: $tel\n Email: $email\n Website: $website\n Fax: $fax\n';
                                    await Share.share(text);
                                  },
                                ),
                    ],
                  ),
       ]), 
        
        //  bottomNavigationBar:const CustomeButtomNavBar(index: 3,),
  
        // BottomAppBar(),
    
      
     );
     
    return scaffold;
  }

  Future<String> storeImageInFirebase(String fileName) async {
  try {
    final storage  = FirebaseStorage.instance.ref();
       final images = storage.child('media');
       final imageRef = images.child(fileName);
       	



       final networkImageUrl = await imageRef.getDownloadURL();
       print(networkImageUrl);
    return networkImageUrl;
  } on FirebaseException catch (e) {
    // Handle potential errors
    print('Error storing image: ${e.code} - ${e.message}');
    return ''; // Or throw an exception for further handling
  }
}

}