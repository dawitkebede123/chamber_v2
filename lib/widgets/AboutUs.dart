import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/FAQ.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/Message.dart';
import 'package:chamber_of_commerce/widgets/expandedPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>> contact =[
       {
      "title":"For Business Related Enquiry",
    "content": "0115519817 \n 0911376543 \n addischamber@gmail.com"


     },
   
    {
      "title":"For Financial Almanac Related Enquiry",
    "content": "   +251 11 515 5221 \n +251 91 196 4500 \n  +251 93 155 9829 \n flijalem@yahoo.com \n lemlem.aaccsa@gmail.com"
    },
    

  ];
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       



      floatingActionButton:  FloatingActionButton(onPressed: ()=>{
          Navigator.push(
                context,
                 TransparentRoute(
               
                page:  FAQ(),
              ),
              ),
      },
         backgroundColor: Color.fromARGB(255, 255, 241, 209),
         child: Text("FAQ"),
         ),
      appBar: AppBar(
        backgroundColor:Colors.white,
        
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
          padding: const EdgeInsets.all(20.0),
          child: ListView(
              
               children:[
                Container(
              margin: const EdgeInsets.all(20.0),
              ///place holder for slider 
              child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
           ),
          
            Text(textAlign: TextAlign.justify, "Established in 1947, AACCSA is a voluntary, non-governmental, business membership organization with more than 17,000 member companies. The chamber serves as a credible voice of business and advocates for the creation of a conducive business environment. It also promotes trade and industry, disseminating business information, consulting government and members on economic development and business issues, establishing friendly relationship with similar chambers in other countries, and exchanging information as well as engaging in arbitration in times of disputes among businesses."),
             TextButton(onPressed: ()=>{
          Navigator.push(
                context,
                 TransparentRoute(
               
                page:  Message(message: "Message from the CEO: Celebrating Success in Our Business Directory \n Dear Members of Addis Ababa Chamber of Commerce & Sectoral Associations and partners,\nI am thrilled to share with you the latest edition of our business directory, which is a reasonably comprehensive listing of businesses across various industries and in fact a testament to the thriving ecosystem of businesses in Addis Chamber. As such, it is my hope that this directory not only serves as a platform to facilitate networking amongst businesses by showcasing their products and services, but also as a snapshot of our national economy.\nI take this opportunity to extend my heartfelt congratulations to all our member businesses who sponsored and made advertisements on this directory for their commitment, dedication and hard work which contributed to the success reflected in this publication. It is through your innovation, resilience, and commitment that we continue as Addis Chamber to strengthen our business community and drive economic growth.\nI also want to recognize the incredible efforts of my colleagues in the chamber who have worked tirelessly to compile this directory and ensure its accuracy and relevance. Your professionalism and dedication are invaluable in supporting our members and advancing our chamber's mission.\nAs we celebrate the achievements highlighted in this directory, let us also look ahead with optimism and determination. Together, we will continue to overcome the mushrooming challenges, seize opportunities, and build a brighter future for our businesses and our community.\n Thank you for your ongoing support and confidence in your chamber\n"
                
                
                , image: "assets/sg.jpg")
              ),
              ),
            }, child: Text("Message From SG")),
           TextButton(onPressed: ()=>{
          Navigator.push(
                context,
                 TransparentRoute(
               
                page:  Message(message: "Dear Users,\n Addis Ababa Chamber of Commerce and Sectoral Associations / Addis Chamber/ and I are pleased to present you the new edition of the Addis Ababa Business Directory 2024- 2025.\nAddis Ababa Business Directory 2024-2025, published by the Addis Chamber, is an indispensable reference for business people, foreign direct investors, exporters, importers, entrepreneurs, commercial counselors as well as potential foreign investors planning to create new business ventures in Ethiopia and worldwide.\nThis version will also grab an opportunity to promote businesses, increase local and international brand visibility to build links and meaningful connections with influential partners and grow businesses through digital platform.\nIt encompasses a diverse array of information on each business and has attested to be a robust instrument for firms and consumers containing a complete list of our members, the country’s profile and investment opportunities in Ethiopia as well as portrayals of the services offered by Addis chamber.\nI wish to reinforce the notion that the private sector is the main driver of growth of the economy. And it is light of the forgoing that our chamber provides information for businesses to flourish. With premier business and networking opportunities among its countless benefits, the Chamber offers reliable support to help our businesses connect, succeed and grow.\nWe sincerely hope this Directory both the digital and the printed ones proves useful to you and your customers. We believe that it encourages the users to make contact and create business opportunities by promoting their goods and services with their counterparts both local and international.\nI would therefore, like to take this opportunity to recognize and acknowledge all businesses that have placed their adverts and commercials on this Directory and also applaud the secretariat  of Addis Chamber for its impressive contribution to the realization of this vital business Directory.\nMesenbet Shenkute \nPresident\nAddis Ababa Chamber of Commerce and Sectoral Associations\n", image: "assets/president.jpg")
              ),
              ),
            }, child: Text("Message From President")),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 300,
                    child: ExpandedPanel(data: contact)),
                ),
              ],
            ),
          ]),
        )
         
         
          
    
      
     );
     
    return scaffold;
  // );
  }
 
  // }
  
}