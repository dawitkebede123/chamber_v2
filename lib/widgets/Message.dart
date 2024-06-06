import 'package:chamber_of_commerce/widgets/AboutUs.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Message extends StatelessWidget {
  final String message;
  final String image;
  const Message({super.key,required this.message,required this.image});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       



     
      appBar: AppBar(
        backgroundColor:Colors.white,
        
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:()=>{
          Navigator.push(
                context,
                 TransparentRoute(
               
                page:  About(),
              ),
              ),
            }
          ),
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title:const Text(
          'Addis Chamber',
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
      // Container(
        
         Padding(
           padding: const EdgeInsets.only(left: 20.0,right: 20,top: 4),
           child: ListView(children: [
            Image.asset(image),
            Text(message,textAlign: TextAlign.justify,),
           ],),
         ),
           bottomNavigationBar: const CustomeButtomNavBar(index: 0),
    
      
     );
     
    return scaffold;
  }
}