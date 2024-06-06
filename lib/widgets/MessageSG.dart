import 'package:chamber_of_commerce/widgets/AboutUs.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class MessageSg extends StatelessWidget {
  // final String messageSg;
  // final String image;
  const MessageSg({super.key});

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
            Image.asset('assets/sg.jpg'),
             SizedBox(height: 20,),
            Text('Message from the CEO: Celebrating Success in Our Business Directory'),
            SizedBox(height: 10,),
Text('Dear Members of Addis Ababa Chamber of Commerce & Sectoral Associations and partners',textAlign: TextAlign.justify,),
SizedBox(height: 10,),
Text('I am thrilled to share with you the latest edition of our business directory, which is a reasonably comprehensive listing of businesses across various industries and in fact a testament to the thriving ecosystem of businesses in Addis Chamber. As such, it is my hope that this directory not only serves as a platform to facilitate networking amongst businesses by showcasing their products and services, but also as a snapshot of our national economy.',textAlign: TextAlign.justify,),
SizedBox(height: 10,),
Text('I take this opportunity to extend my heartfelt congratulations to all our member businesses who sponsored and made advertisements on this directory for their commitment, dedication and hard work which contributed to the success reflected in this publication. It is through your innovation, resilience, and commitment that we continue as Addis Chamber to strengthen our business community and drive economic growth.',textAlign: TextAlign.justify,),
SizedBox(height: 10,),
Text('I also want to recognize the incredible efforts of my colleagues in the chamber who have worked tirelessly to compile this directory and ensure its accuracy and relevance. Your professionalism and dedication are invaluable in supporting our members and advancing our chambers mission.',textAlign: TextAlign.justify,),
SizedBox(height: 10,),
Text('As we celebrate the achievements highlighted in this directory, let us also look ahead with optimism and determination. Together, we will continue to overcome the mushrooming challenges, seize opportunities, and build a brighter future for our businesses and our community.',textAlign: TextAlign.justify,),
SizedBox(height: 10,),
Text('Thank you for your ongoing support and confidence in your chamber.',textAlign: TextAlign.justify,),

           ],),
         ),
           bottomNavigationBar: const CustomeButtomNavBar(index: 0),
    
      
     );
     
    return scaffold;
  }
}