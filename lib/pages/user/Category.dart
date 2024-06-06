import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
   Widget build(BuildContext context) {
     const _items = [
    "assets/images/awash.jpg",
    "assets/images/air.jpg",
    "assets/images/dashen.jpg",
    "assets/images/air.jpg",
    "assets/images/dashen.jpg",
    "assets/images/awash.jpg",
   
   

  ];
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 255, 241, 209),
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
          'Category',
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
      //  ListView(
        // children: [
            GridScreen(items: _items),
            //  GridSingle()
        // ],
      // ),
        


      
      // ListView(
      //   children: [

      //     ////slider for almanac
      //     Container(
      //       ///place holder for slider 
      //       child: const Image(
      //       image:AssetImage('assets/images/business_Adv.png')
      //               ),
      //     ),
          
      //    GridView.count(
      //   crossAxisCount: 3, // Three columns
      //   childAspectRatio: 1.5, // Aspect ratio for cards (adjust as needed)
      //   children: _items.map((String item) => _buildCard(item)).toList(),
      // ),
       
     
      //   ],
         
         
      // ),
 

      // addis chamber contact bar
      

      bottomNavigationBar:const CustomeButtomNavBar(index: 3,),

    );
    return scaffold;
  }

 Widget _buildCard(String item) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(item),
        ),
      ),
    );
  }
}