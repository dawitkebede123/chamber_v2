import 'package:chamber_of_commerce/pages/user/About_Almanac.dart';
import 'package:chamber_of_commerce/pages/user/AlmanacListing.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/pages/user/UseFullAddress.dart';
import 'package:chamber_of_commerce/widgets/AboutUs.dart';
import 'package:chamber_of_commerce/widgets/Almanac_Category.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/SearchField.dart';
import 'package:chamber_of_commerce/widgets/SearchFieldAlmanac.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Almanac extends StatelessWidget {
   final List<String> categories= [
  "assets/images/almanac_lists/1.svg",
     "assets/images/almanac_lists/2.svg",
     "assets/images/almanac_lists/3.svg", 
     "assets/images/almanac_lists/4.svg",
      // "assets/images/almanac_lists/5.svg",
      "assets/images/almanac_lists/6.svg",
  ];
  final List<String> title= [

   "Bank",
   "Insurance",
   "Micro Finance",
   "FinTech",
  //  "Telecom",
   "Saving And Credit",
  //  "Capital Goods Finance"
  ];
  final slideImages = [
   "assets/images/almanac_lists/adv_logo/ethio.jpg",
    "assets/images/almanac_lists/adv_logo/awash.jpg",
     "assets/images/almanac_lists/adv_logo/kacha.jpg",
     "assets/images/almanac_lists/adv_logo/nib.jpg",
     "assets/images/almanac_lists/adv_logo/tsedey.jpg"
  ];



  // const Almanac({super.key});
   List <dynamic> AlmanacCategory = [
    {
      "image":"assets/images/finance.svg",
       "index":1,
       "title":""
    },
    {
       "image":"assets/images/finance.svg",
     "index":2,
       "title":""
    },
    {
       "image":"assets/images/finance.svg",
     "index":3,
       "title":""
    },
    {
       "image":"assets/images/finance.svg",
     "index":4,
       "title":""
    },
   
    {
       "image":"assets/images/finance.svg",
     "index":6,
            "title":""
    },
    //  {
    //    "image":"assets/images/finance.svg",
    //  "index":5,
    //    "title":""

    // },
    ];
  

  final List<String> _items = [
    "assets/images/almanac_lists/1.svg",
     "assets/images/almanac_lists/2.svg",
     "assets/images/almanac_lists/3.svg", 
     "assets/images/almanac_lists/4.svg",
      "assets/images/almanac_lists/6.svg",
      // "assets/images/almanac_lists/5.svg",

      

   
   

  ];
  @override
  Widget build(BuildContext context) {
    
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       floatingActionButton:  Container(
                   height: 70.0,  // Adjust height as needed
           width: 80.0,  // Adjust width as needed
         child: FloatingActionButton(onPressed: ()=>{
            Navigator.push(
                  context,
                   TransparentRoute(
                 
                  page:  UsefullAddress(),
                ),
                
                ),
               },
         backgroundColor: Color.fromARGB(255, 255, 241, 209),
           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: const Text("Usefull Address"),
           ),
               ),
       ),

      appBar: AppBar(
        backgroundColor:Colors.white,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
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
      borderRadius: BorderRadius.circular(50.0), // Set border radius
    ),
       
        title:const Text(
          'Finacial Almanac 2024',
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
    
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top: 4.0,left: 20,right: 20,bottom: 16),
            child: Container(
               width: MediaQuery.of(context).size.width * 0.9,
              height: 126,
              decoration: BoxDecoration(
              
                color: Color.fromARGB(255, 255, 255, 255),
                 border:Border.all(
                  color: const Color.fromARGB(255,229,234,232),
                 ) ,
                  borderRadius:BorderRadius.circular(20),),
                  child:Column( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
             CarouselSlider.builder(itemCount: slideImages.length, itemBuilder:(context,index,realIndex){
              final urlImage = slideImages[index];
              return buildImage(urlImage,index);
             }, options: CarouselOptions(height: 100,autoPlay: true))
            
                  ],)
                    // child:SvgPicture.asset('assets/images/Adv_slider.svg'),
            ),
          ),
           Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
                child: SearchFieldAlmanac(),
              ),
        // SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 146,//146
              decoration: BoxDecoration(
                    
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: const Color.fromARGB(255,229,234,232),
                ),
                  borderRadius:BorderRadius.circular(20), // Set border width
            
              ),
            
            //about almanac
            child: Padding(padding:EdgeInsets.only(left: 20,right: 20,top: 0,bottom: 16),
             child:  ListView(children:  [
              // Row(children: [
                SizedBox(height: 20,),
                 Text("About Financial Almanac", style: TextStyle(fontWeight: FontWeight.bold),),
              
               Text("The financial landscape in Ethiopia is witnessing a significant transformation"),
               Row(
                 children: [
                  Spacer(),
                   TextButton(
                         onPressed: () {
                            Navigator.push(
                    context,
                     TransparentRoute(
                   
                    page:  AboutAlmanac(),
                                 ),
                                 );
                           // Add functionality for button press
                     },
                         child: Text('Read more'),
                       ),
                 ],
               ),
              // ]
              
              // ),
                       ],),)
            
            
                    
            ),
          ),
          
       Expanded(
         child: Padding(
                     padding: const EdgeInsets.only(left: 20.0,right: 20,top: 0),
                     child: GridView.builder(
                             itemCount: categories.length,
                             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 3, // Number of columns
                               crossAxisSpacing: 20.0, // Spacing between columns
                               mainAxisSpacing: 10.0, 
                               childAspectRatio: 120/140 // Spacing between rows
                             ),
                             itemBuilder: (context, index) {
                               final item = categories[index];
                               return GestureDetector(
                                 child: Column(
                                   children: [
                                     Container(
                                      decoration: BoxDecoration(
                                                   color:Color.fromARGB(255, 229, 234, 232) ,
                                                   border: Border.all(
                                                     color: Colors.white,
                                                     width: 1.0,
                                                   ),
                                                   borderRadius: BorderRadius.circular(20.0),
                                                 ),
                                      height: 94,
                                      width: 94,
                                       child: Center(
                                         child:SvgPicture.asset(item)
                                       ),
                                     ),
                                     Text(title[index],
                                      style: TextStyle(fontSize: 12,),
                                      textAlign: TextAlign.center,
                                     maxLines: 2,
                    overflow: TextOverflow.ellipsis,)
                                   ],
                                 ),
                                                       onTap: () {
                                  Navigator.push(
                                    context,
                                    TransparentRoute(
                 
                  page:  AlmanacListing(index: index),
                ),
                                  );
                                },
                               );
                             },
                           ),
                   ),
       ),

       
         
                   
          


        ],
      ),
          bottomNavigationBar:const CustomeButtomNavBar(index: 3,),


    );
    return scaffold;
  }
Widget buildImage(String urlImage,int index)=>
          Container(
                 margin: EdgeInsets.symmetric(horizontal:5),
                 child:Image.asset(urlImage,fit: BoxFit.cover,),
          );
//  Widget _buildCard(String item) {
//     return Container(
//       height: 126,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Text(item),
//         ),
//       ),
//     );
//   }
}