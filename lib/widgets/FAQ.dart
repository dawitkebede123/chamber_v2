import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/AboutUs.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/expandedPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>> contact =[
    {
      "title":"What is a business directory?",
    "content": "A business directory is an online platform where businesses can list their information, such as name, address, contact details, and services, to help customers find and connect with them easily."
    },
     {
      "title":"How can I add my business to the directory?",
    "content": "To add your business, you have to be member of the Addis Ababa Chamber of Commerce and Sectoral Associations. We provide trade directory to only our members. If you want to advertise, there is a reasonable price with different packages. You can contact us at +251 115 518055 ext 222."     },
      {
      "title":"How long does it take to get my business listed?",
    "content": " After submitting your business information, our team will review it within 48 -72 hours. You will receive a confirmation email once your listing is approved and live on our site."         },
      {
      "title":"How do I verify my business?",
    "content": "Verification can be done by providing valid documents such as a business license or payment slip for bank deposit showing your business name and address. Verification helps increase your business's credibility and visibility in our directory."
             },
      {
      "title":"How can I update my business information?",
    "content": "You can contact us at +251 115 518055 ext 222"
         },
         {
      "title":"Can I remove my business from the directory?",
    "content": "Yes, if you wish to remove your business, please contact us at +251 115 518055 ext 222."
         },
         {
      "title":"What are the benefits of being listed in the directory?",
    "content": "Being listed in our directory increases your online visibility, helps potential customers find your business easily."
         },
         {
      "title":"Why is my business not appearing in search results?",
    "content": "Ensure that your business listing is complete and accurate. It may take some time for new listings to appear in search results. If your listing is still not visible, you can contact us at +251 115 518055 ext 222."
         }

  ];
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
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ExpandedPanel(data: contact),
      ),
      // Container(
  //       ListView(
  //            children:[
  //             Container(
  //           margin: const EdgeInsets.all(20.0),
  //           ///place holder for slider 
  //           child: SvgPicture.asset('assets/images/chamber_logo_FAQ_page.svg')
  //        ),
  //         Padding(padding: EdgeInsets.only(top: 10.0,left: 30,right: 30),
  //       child:Column(
  //         children: [
  //               Text("Established in 1947, AACCSA is a voluntary, non-governmental, business membership organization with more than 17,000 member companies. The chamber serves as a credible voice of business and advocates for the creation of a conducive business environment. It also promotes trade and industry, disseminating business information, consulting government and members on economic development and business issues, establishing friendly relationship with similar chambers in other countries, and exchanging information as well as engaging in arbitration in times of disputes among businesses."),
  //               Container(
  //         height:200,
  //          child: Expanded(child: Padding(
  //            padding: const EdgeInsets.all(20.0),
  //            child: ExpandedPanel(data: contact),
  //          )),
  //        ),
      
        
  //               Container(
  //                 padding: EdgeInsets.only(top: 20),
  //                 child: Column(children: [
  //                    Row(

  //                children: [
  //                 // Padding(padding:const EdgeInsets.all(12.0),
                
  //                 SvgPicture.asset('assets/images/phone_icon.svg'),
  //                          SizedBox(width: 20,),

  //                  const Column(
  //                       children: [
  //                         Row(
  // // mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                               Text("Phone ",textAlign: TextAlign.left),
  //                         ] 
  //                         ),
  //                      Text("+251 115 518 055",)
  //                       ],
  //                     )
                   
  //                 //  ),
                      
             
                         
                   
  //                ],
  //               ),
  //                Row(children: [
  //                   SvgPicture.asset('assets/images/mail_icon.svg'),
  //                          SizedBox(width: 20,),

  //                     const Column(
  //                       children: [
  //                       Text("Email ",textAlign: TextAlign.left),
  //                      Text("info@addischamber.com",textAlign: TextAlign.left)
  //                       ],
  //                     )
                      
  //                ],)
                

                         
                   
  //                ],
  //               ),
  //                 // ],),
  //               )
               
          // ],
        // ) 
        // ),
        // ])
         
         
          
    
      
     );
     
    return scaffold;
  // );
  }
 
  // }
  
}