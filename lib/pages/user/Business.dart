import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Agriculture/Agriculture_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Community/Community_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Construction/Construction_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Electricity/Electricity_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Hotel/Hotel_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Import/Import_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Maintenance/Maintenance_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Manufacturing/Manufacturing_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Mining/Mining_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Real_Estate/Real_Estate_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Transport/Transport_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Wholesale/Wholesale_Home.dart';
import 'package:chamber_of_commerce/pages/user/Business_listing.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/user/UseFullAddress.dart';
import 'package:chamber_of_commerce/pages/user/usefull_Address_Business.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/GridScreenForBusiness.dart';
import 'package:chamber_of_commerce/widgets/GridSingle.dart';
import 'package:chamber_of_commerce/widgets/SearchField.dart';
import 'package:chamber_of_commerce/widgets/SearchFieldBusiness.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class Business extends StatefulWidget {
  const Business({super.key});
  @override
  State<Business> createState() => _BusinessState();
}
   
class _BusinessState extends State<Business> {



   String _query = '';
  List <String> _items = [
      "assets/images/business_lists/5.svg",
       "assets/images/business_lists/8.svg",
        "assets/images/business_lists/11.svg",
        "assets/images/business_lists/6.svg",
        "assets/images/business_lists/13.svg",

        "assets/images/business_lists/1.svg",
        //  "assets/images/business_lists/2.svg",
        "assets/images/business_lists/3.svg",
        "assets/images/business_lists/4.svg",
        
        "assets/images/business_lists/7.svg",
       
        "assets/images/business_lists/9.svg",
        "assets/images/business_lists/10.svg",
        "assets/images/business_lists/12.svg",
        "assets/images/business_lists/14.svg",
  ];
  List <String> title = [
    "Export",
    "Import",
    "Manufacturing",
   "Construction",
   "Transport, Storage And Communication",

   "Agriculture, Hunting, Forestry, And Fishing",
  //  "Financial Inter Mediation And Insurance",
   "Community, Social And Personal Services",
   "Electricity, Gas And Water Supply",
   
   "Hotel And Restaurants",
  
   "Wholesale And Retail ",
   "Maintenance",
   
   "Mining And Quarrying",
   "Real Estate And Business Service"
  ];
 final slideImages = [
   "assets/images/business_lists/adv_logo/1.jpg",
   "assets/images/business_lists/adv_logo/2.jpg",
   "assets/images/business_lists/adv_logo/3.jpg",
   "assets/images/business_lists/adv_logo/4.jpg",
   "assets/images/business_lists/adv_logo/5.jpg",
   "assets/images/business_lists/adv_logo/7.jpg",
   "assets/images/business_lists/adv_logo/8.jpg",
   "assets/images/business_lists/adv_logo/9.jpg",
   "assets/images/business_lists/adv_logo/10.jpg",
   "assets/images/business_lists/adv_logo/11.jpg",
     "assets/images/business_lists/adv_logo/12.jpg",
     "assets/images/business_lists/adv_logo/13.jpg",
     "assets/images/business_lists/adv_logo/14.jpg",
     "assets/images/business_lists/adv_logo/15.jpg",
     "assets/images/business_lists/adv_logo/16.jpg",
     "assets/images/business_lists/adv_logo/17.jpg",
     "assets/images/business_lists/adv_logo/18.jpg",
     "assets/images/business_lists/adv_logo/19.jpg",
     "assets/images/business_lists/adv_logo/20.jpg",
     "assets/images/business_lists/adv_logo/21.jpg",
     "assets/images/business_lists/adv_logo/22.jpg",
     "assets/images/business_lists/adv_logo/23.jpg",
     "assets/images/business_lists/adv_logo/24.jpg",
     "assets/images/business_lists/adv_logo/25.jpg",
     "assets/images/business_lists/adv_logo/26.jpg",
     "assets/images/business_lists/adv_logo/27.jpg",
     "assets/images/business_lists/adv_logo/28.jpg",
     "assets/images/business_lists/adv_logo/29.jpg",
     "assets/images/business_lists/adv_logo/30.jpg",
     "assets/images/business_lists/adv_logo/31.jpg",
     "assets/images/business_lists/adv_logo/32.jpg",
     "assets/images/business_lists/adv_logo/33.jpg",
     "assets/images/business_lists/adv_logo/34.jpg",
     "assets/images/business_lists/adv_logo/35.jpg",
     "assets/images/business_lists/adv_logo/36.jpg",
     "assets/images/business_lists/adv_logo/37.jpg",
     "assets/images/business_lists/adv_logo/38.jpg",
     "assets/images/business_lists/adv_logo/39.jpg",
     "assets/images/business_lists/adv_logo/40.jpg",
     "assets/images/business_lists/adv_logo/41.jpg",
     "assets/images/business_lists/adv_logo/42.jpg",
     "assets/images/business_lists/adv_logo/43.jpg",
  ];
   final _searchController = TextEditingController();
  String _searchTerm = '';
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
    _searchController.dispose();
    super.dispose();
  }

  void _searchCompany(String searchTerm) {
    setState(() {
      _searchTerm = searchTerm.toLowerCase();
    });
  }
  @override
  
  Widget build(BuildContext context) {
  
  
  final List<Map<String, String>> businessCompanyProfile = [
  //  {
  //     "sector":"Manufacturing",
  //    "name": "AARTI STEEL PLC",
  //    "logo": "assets/images/phone_icon.svg",
  //    "adv_image":"assets/images/phone_icon.svg",
  //    "adv_video":"assets/video/business/1.mp4",
  //    "profile": "",
  //    "tel": "0116673563",
  //    "email": "",
  //    "website":"",
  //    "fax":""
  //  },
  //  {
  //    "sector":"EXPORT",
  //    "name": "ABBAHWA TRADING P.L.C",
  //    "logo": "assets/images/business_lists/adv_logo/1.jpg",
  //    "adv_image":"",
  //    "adv_video":"assets/video/business/2.mp4",
  //    "profile": "",
  //    "tel": "0114199629",
  //    "email": "",
  //    "website":"",
  //    "fax":""
  //  },
  //   {
  //    "sector":"EXPORT",
  //    "name": "ABAT IMPORT AND EXPORT PLC",
  //    "logo": "assets/images/business_lists/adv_logo/2.jpg",
  //    "adv_image":"",
  //    "adv_video":"assets/video/business/3.mp4",
  //    "profile": "",
  //    "tel": "0116392232",
  //    "email": "",
  //    "website":"",
  //    "fax":""
  //  }
   
   ];
     var scaffold = Scaffold(

        floatingActionButton:  Container(
                   height: 70.0,  // Adjust height as needed
           width: 80.0,  // Adjust width as needed
         child: FloatingActionButton(onPressed: ()=>{
            Navigator.push(
                  context,
                   TransparentRoute(
                 
                  page:  UseFullAddressBusiness(),
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

      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





   

     appBar: 
     
     AppBar(
        backgroundColor:Colors.white,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Home() ),

            ),
            }
          ),
      
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0), // Set border radius
    ),
       
        title:const Text(
          'Business Directory 2024',
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
              
    
            // SvgPicture.asset('assets/images/Adv_slider.svg'),
            // Slider(value: value, onChanged: onChanged),
           Column(
            children: [
               Padding(
                      padding: EdgeInsets.only(top:4, left: 20,right: 20,bottom: 16),
                      child:Container(
                   width: MediaQuery.of(context).size.width * 0.9,
                  height: 126,
                  decoration: BoxDecoration(
                         border: Border.all(
                       color: Color.fromARGB(255,229,234,232), // Set border color
                       width: 1.0,
                     ),
                    color: Color.fromARGB(255, 255, 255, 255),
                       
                       borderRadius:BorderRadius.circular(20),),
                       child:
                       
                       Column( 
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                 CarouselSlider.builder(itemCount: slideImages.length, itemBuilder:(context,index,realIndex){
                  final urlImage = slideImages[index];
                  return buildImage(urlImage,index);
                 }, options: CarouselOptions(height: 100,autoPlay: true))
                       
                       ],)
                         // child:SvgPicture.asset('assets/images/Adv_slider.svg'),
                ),),
              
               Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
                      child: TextField(
                onChanged: (value) {
                  setState(() {
                    _query = value.toLowerCase();
                  });
                },
                decoration: const InputDecoration(
                  // labelText: 'Search',
                  hintText: 'Search Business',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              
                    ),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
                   child: GridView.builder(
                           itemCount: _filteredItems.length,
                           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 3, // Number of columns
                             crossAxisSpacing: 20.0, // Spacing between columns
                             mainAxisSpacing: 10.0, 
                             childAspectRatio: 120/160 // Spacing between rows
                           ),
                           itemBuilder: (context, index) {
                            //  final item = _filteredItems[index];
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
                                       child:SvgPicture.asset(_items[index])
                                     ),
                                   ),
                                   Text(_filteredItems[index],
                                    style: TextStyle(fontSize: 12,),
                                    textAlign: TextAlign.center,
                                   maxLines: 2,
                  overflow: TextOverflow.ellipsis,)
                                 ],
                               ),
                            
                            onTap: () {
                                                     
                                   if(index == 0){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Export_Home()
              ),
                                );
                                   }  
                                   if(index == 1){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Import_Home()
              ),
                                );
                                   }  
                                   if(index == 2){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Manufacturing_Home()
              ),
                                );
                                   }
                                   if(index == 3){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Construction_Home()
              ),
                                );
                                   }
                                   if(index == 4){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Transport_Home()
              ),
                                );
                                   }  
                                   if(index == 5){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Agriculture_Home()
              ),
                                );
                                   }   
                                   if(index == 6){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Community_Home()
              ),
                                );
                                   }   
                                   if(index == 7){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Electricity_Home()
              ),
                                );
                                   }  
                                   if(index == 8){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Hotel_Home()
              ),
                                );
                                   }  
                                   if(index == 9){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Wholesale_Home()
              ),
                                );
                                   } 
                                   if(index == 10){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Maintenance_Home()
              ),
                                );
                                   }  
                                   if(index == 11){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Mining_Home()
              ),
                                );
                                   }  
                                   if(index == 12){
                                     Navigator.push(
                                  context,
                                  TransparentRoute(
                                    page:Real_Estate_Home()
              ),
                                );
                                   }     
                                 
                      //              else{
                      //                   Navigator.push(
                      //             context,
                      //             TransparentRoute(
                      // page:  Business_listing(index: index,title:title[index],businessCompanyProfile: businessCompanyProfile),
                      //       ),
                      //           );
                      //              }                 
                             
                                                      
                               
                              },
                             );
                           },
                         ),
                 ),




               ),
            



             ]
           ), 
           // Define scrollable grid
          
                                
  
         
       
          bottomNavigationBar:const CustomeButtomNavBar(index: 2,),


     
    );
    return scaffold;

    
  }
List<String> get _filteredItems => title
      .where((item) => item.toLowerCase().contains(_query))
      .toList();

 Widget buildImage(String urlImage,int index)=>
          Container(
                 margin: EdgeInsets.symmetric(horizontal:5),
                 child:Image.asset(urlImage,fit: BoxFit.cover,),
          ); 

          
}

 