import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Agriculture/Agriculture_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Transport/Transport_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_listing.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/GridScreenForBusiness.dart';
import 'package:chamber_of_commerce/widgets/GridSingle.dart';
import 'package:chamber_of_commerce/widgets/SearchField.dart';
import 'package:chamber_of_commerce/widgets/SearchFieldBusiness.dart';
import 'package:chamber_of_commerce/widgets/business_top_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class Transport_Home extends StatefulWidget {
  const Transport_Home({super.key});
  @override
  State<Transport_Home> createState() => _Transport_HomeState();
}

class _Transport_HomeState extends State<Transport_Home> {
  String _query = '';
   List <String> title = [
       'TAXIS',
'TOUR OPERATORS',
'CUSTOMS CLEARANCE',
'OTHER FREIGHT TRANSPORT BY ROAD',
'FREIGHT FORWARDERS',
'STORAGE AND WAREHOUSING',
'TRAVEL AGENCY REPRESENTATION AND ONLINE TRAVEL AGENCY ACTIVITY',
'FREIGHT FORWARDERS AND HARBOUR WORKS',
'URBAN, SUB URBAN AND INTER-URBAN BUS AND COACH PASSENGER LINES',
'OTHER POSTAL AND RELATED COURIER ACTIVITIES',
'TELECOMMUNICATION',
'SHIP AGENTS',
'COURIER ACTIVITIES OTHER THAN NATIONAL POSTAL ACTIVITIES',
'TRANSPORT OF FUEL',
'CROSS-COUNTRY PUBLIC TRANSPORT',
'GROUND HANDLING',
'RETAIL TRADE OF VEHICLES',
'ACTIVITIES OF AIR TRANSPORT',
'EVENT ORGANIZERS',
'TOURISM PROMOTION',
'LAND TRANSPORT AND RELATED SERVICES',
'TRANSPORT SERVICE BY ROAD AND DRY FREIGHT',
'Other passenger transport, including the renting of passenger motor vehicles with drivers .',
'TRANSPORT AGENCIES',
'LOCAL LABOR RECRUTMENT AND LINKAGE ACTIVITIES',
'SECURITY AND CLEANING SERVICE',
'Trade Promotion Service',
'TRAVEL AGENT',
'TRANSPORT OF CONSTRUCTION MATERIALS',
'FREIGHT TRANSPORT BY CONTAINER',
'Parking garages and parking lots',
'BROKER IN VEHICLES RENTING AND SAILING',
'CONSTRUCTION MATERIALS, HARDWARE, PLUMBING',
'HOUSHOLDS INCLUDING MATTRESSES,CUSHIONS,BLANKETS ETC',
'ዶክመንቱ አልተሟላም (ንግድ ፈቃዱ ከጀርባ ያለው መረጃ የለም )',
'RENTING OF LAND TRANSPORT ( CAR) EQUIPMENT',
'SALVAGING OF DISTRESSED VESSELS AND CARGOS',
'Operation of roads and toll roads',
'TELECOMMUNICATION VALUE ADDED SERVICE',
'INTER-URBAN RAILWAY TRANSPORT',
'TRANSPORT OF CARGO TRUCKS',
'COMMISSION/BROKERS BUSINESS ACTIVITIES',
'SPECIAL EVENT ORAGANIZTION ACTIVITIES',
'TELECOMMUNICATION VALUE ADDED SERVICES',
'ABROAD RECRUITMENT AND LINKAGE ACTIVITIES',
'LIQUID FREIGHT TRANSPORT SERVICE',
'TELECOMMUNICATION TERMINAL EQUIPMENTS MAINTENANCE',
'TRANSPORT OF DIFFERENT CAR BY CRANES OR PULLING OR LOADING',
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
  
  //    [
  //      "assets/images/business_lists/5.svg",
  // ];
  
     title.sort((a,b)=>a.compareTo(b));
    List <String> categories = List .generate(title.length, (index) => 
    "assets/images/business_lists/13.svg"
    );

  final List<Map<String, String>> businessCompanyProfile = [
 
   
   ];
     var scaffold = Scaffold(
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
              MaterialPageRoute(builder: (context) =>Business() ),

            ),
            }
          ),
      
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0), // Set border radius
    ),
       
        title:const Text(
          'Transport',
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
           NestedScrollView(
            headerSliverBuilder:(context, innerChildOverscrollIndicator)=> [
           const SliverAppBar(
            automaticallyImplyLeading: false,
            collapsedHeight: 300,
            expandedHeight: 300,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
              child: Business_Top_List(index: 4),
            ),
          )
      ],
             body: Column(
              children: [
                
             Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _query = value.toLowerCase();
                  });
                },
                decoration: const InputDecoration(
                  // labelText: 'Search',
                  hintText: 'Search Transport',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
             
             
             
                //  const Padding(
                //         padding: EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
                //         child: SearchFieldBusiness(),
                //       ),
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
                                     Text(_filteredItems[index],
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
                        page:  Transport_listing(index: index,title:title[index],businessCompanyProfile: businessCompanyProfile),
                              ),
                                  );
                                     }                 
                               
                                                        
                                 
                               );
                             },
                           ),
                   ),
             
             
             
             
                 ),
              
             
             
             
               ]
             ),
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