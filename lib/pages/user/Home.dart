
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Category.dart';
import 'package:chamber_of_commerce/pages/user/Discovery.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:chamber_of_commerce/pages/user/Notify.dart';
import 'package:chamber_of_commerce/widgets/AboutUs.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/SearchField.dart';
import 'package:chamber_of_commerce/widgets/SearchMoreIcon.dart';
import 'package:chamber_of_commerce/widgets/drawer.dart';
import 'package:chamber_of_commerce/widgets/verticalAlign.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(const MyApp());
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   Stream<DatabaseEvent>? _userStream;
   
  @override
  void initState() {
    super.initState();
    try {
    _userStream = FirebaseDatabase.instance.ref('Query7').onValue;
  } on FirebaseException catch (e) {
    print('Firebase error: ${e.code} - ${e.message}');
    // Handle the error appropriately, potentially display a user-friendly message
  }
  }

  @override
  void dispose() {
    // _searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // final AssetImage backgroundImage = AssetImage('assets/images/logo.jpg');
   
    var scaffold = Scaffold(
        drawer: Drawer(
        width: MediaQuery.of(context).size.width * 1,
         backgroundColor: Colors.white,
         child: About(),
      //     child: ListView(
      //      padding: EdgeInsets.zero, // Remove default padding
      //      children: [
      //     // Add any drawer header content here (optional)
      //        const TwoButtonWidget(), // Use the widget directly
      //   ],
      // ),
       ),
      
       





      appBar: AppBar(
        backgroundColor:const Color(0XD6D6D6),
        title:const Text(
          'Addis Chamber Directory',
          style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18,
          ),
        ),

        actions: [
          IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: () {
          Navigator.push(
              context,
              TransparentRoute(
               
                page:  Notify(),
              ),
            );
          // Handle notification tap
        },
      ),
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
    
      body:ListView(
        children: [

          ////slider
          ///
       
          Padding(
            padding: const EdgeInsets.only(top: 4,bottom: 16, left: 20,right: 20),
            child: Container(
              ///place holder for slider 
              child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
                    
            ),
          ),

        //search field
         Padding(
           padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
           child: SearchField(),
         ),
         const SizedBox(height: 10.0),
          //two big buttons
       Container(
         
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center buttons horizontally
            children: [
             CenteredVerticalList(path:'assets/images/business_large.svg', text1: "Business", text2: "Businesses Directory"),
             
              // buildButton(
              //   text: 'Business',
              //   description: "All Businesses",
              //    icon: Icons.info,
              //    targetPage:"BusinessPage",
                 
              //    ),
              SizedBox(width: 15.0), // Add spacing between buttons
              CenteredVerticalList(path:'assets/images/almanac_large.svg', text1: "Finacial Almanac", text2: "Financial Almanac"),
              // buildButton(text: 'Almanac',description: "Financial Business", icon: Icons.abc,targetPage:"AlmanacPage"),
              
            ],
          ),
        ),
          // const SizedBox(height: 10.0),
            // )
      
    GestureDetector(
      onTap: (){
        showModalDialog(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 16,bottom: 0),
          child: Container(
            height:170 ,
            decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/adv.png'),
      fit: BoxFit.cover,
    ),
  ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 140.0,top: 16),
                  child: Text("Click Here \n", style: TextStyle(fontSize: 16,color:Colors.red,fontWeight: FontWeight.w600),),
                ),),
            // child: Center(child: Container(

            //   color: Colors.white,
              // child: Text('Click', style: TextStyle(fontSize:30,fontWeight: FontWeight.w900,color: Colors.red ),)))
         
          //   const Image(
          //   image:AssetImage('assets/images/adv.png')
          // )
          ),
        ),
      ),
     //place holder for advertisment
// const SizedBox(height: 10.0),
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
                height: 70,
                  decoration: BoxDecoration(
            // border: Border.all(
            //   color: Color.fromARGB(255,229,234,232), // Set border color
            //   width: 1.0,
            // ),
              color: const Color.fromARGB(255,229,234,232),
        
              borderRadius:BorderRadius.circular(20), // Set border width
        
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(children: [
            
            // Text('ds'),      // child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
           InkWell(
            onTap:(){
              launch("https://addischamber.com/");
            },
            child: 
           SvgPicture.asset('assets/images/social_media_icons/logo.svg'),
           ),
            SizedBox(width: 35,),
            InkWell(
            onTap:(){
              launch("https://www.facebook.com/addischamber/");
            },
            child: 
            SvgPicture.asset('assets/images/social_media_icons/facebook.svg'),
           ),

            
            SizedBox(width: 10,),
            InkWell(
            onTap:(){
              launch("https://x.com/aaccsa?mx=2");
            },
            child: 
           SvgPicture.asset('assets/images/social_media_icons/twitter.svg'),
           ),
                 
            
          //   InkWell(
          //   onTap:(){
          //     launch("https://addischamber.com/");
          //   },
          //   child: 
          //                   SvgPicture.asset('assets/images/social_media_icons/telegram.svg'),

          //  ),
            SizedBox(width: 10,),
            InkWell(
            onTap:(){
              launch('mailto:info@addischamber.com');
            },
            child: 
                           SvgPicture.asset('assets/images/social_media_icons/email.svg'),

           ),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: InkWell(
              onTap:(){
                launch("https://www.linkedin.com/company/addischamber/?originalSubdomain=et");
              },
              child: 
                         SvgPicture.asset('assets/images/social_media_icons/linkedin.svg'),
                         ),
            ),

             
             
        ],),
          )         
              ),
      ),
     
        ],
        
         
         
      ),
     
      // bottomNavigationBar: const BottomNav(index: 0,),
      bottomNavigationBar: const CustomeButtomNavBar(index: 0),
    
    );
    return scaffold;
  }
}

void showModalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Contact'),
      content: Text(' Office Tel:    +251 11 515 5221 \n Mobile:    +251 91 196 4500  +251 93 155 9829 \n Email:     flijalem@yahoo.com lemlem.aaccsa@gmail.com'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Close'),
        ),
      ],
    ),
  );
}


  Widget targetPageWidget(String targetPage) {
  switch (targetPage) {
    case 'BusinessPage':
      return const Category(); // Replace with your actual page widget
    case 'AlmanacPage':
      return const Category(); // Replace with your actual page widget
    default:
      return const Text('Invalid Page'); // Handle invalid page names
  }
}