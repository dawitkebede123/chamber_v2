import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/FAQ.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/MessagePresident.dart';
import 'package:chamber_of_commerce/widgets/MessageSG.dart';
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
               
                  page: MessageSg()              
                
                // , image: "assets/sg.jpg")
              ),
              ),
            }, child: Text("Message From Secretary General")),
           TextButton(onPressed: ()=>{
          Navigator.push(
                context,
                 TransparentRoute(
               
                page:  MessagePresident()
              ),
          )}, child: Text("Message From President")),
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