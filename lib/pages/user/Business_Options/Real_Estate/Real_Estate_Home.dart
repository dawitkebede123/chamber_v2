import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Agriculture/Agriculture_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Real_Estate/Real_Estate_Listing.dart';
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


class Real_Estate_Home extends StatefulWidget {
  const Real_Estate_Home({super.key});
  @override
  State<Real_Estate_Home> createState() => _Agriculture_HomeState();
}

class _Agriculture_HomeState extends State<Real_Estate_Home> {
  String _query = '';
   List <String> title = [
     'CONSTRUCTION RELATED PROFESSIONAL CONSULTANCY SERVICES',
'NEWSPAPERS, JOURNALS AND PERIODICALS PUBLISHER',
'NEWSPAPERS, JOURNALS AND PERIODICALS DISTRIBUTER',
'SECURITY ACTIVITIES',
'PROFESSIONAL CONSULTANCY SERVICES',
'RENTING OF CONSTRUCTION AND CIVIL ENGINEERING MACHINERY AND EQUIPMENT',
'DEVELOPING REAL ESTATE, SUBDIVIDING REAL ESTATE INTO LOTS AND RESIDENTIAL DEVELOPMENT',
'REAL ESTATE DEVELOPMENT DISTRIBUTION AND INDUSTRY PARKS DEVELOPMENT INTO LOTS ACTIVITIES',
'FIXED PROPERTY SUBLETTING/RENTING ACTIVITITIES',
'LOCAL ACTIVITIES OF EMPLOYMENT AGENCIES AND RECRUITING ORGANIZATIONS',
'SUBLETTING/RENTING OF BUILDING(FIXED PROPERTY)AND HOUSES',
'CONSTRUCTION AND RELATED SPECIALIZED CONSULTANCY SERVICES',
'PACKAGING ACTIVITIES',
'RENTING OF PERSONAL AND HOUSEHOLD GOODS',
'HOTEL & TOURISM CONSULTANCY',
'RENTING OF AGRICULTURAL MACHINERY AND EQUIPMENT',
'PHOTOGRAPHIC ACTIVITIES',
'Renting of building',
'CONSTRUCTION MATERIALS HARDWARE, PLUMBING AND HEATING EQUIPMENT AND SUPPLIES',
'CONSULTATION OF WATER WORKS',
'ADVERTISING',
'ACTIVITIES OF COST AND MANAGEMENT ACCOUNTANTS',
'ACTIVITIES OF EMPLOYMENT AGENCIES AND RECRUITING ORGANIZATIONS',
'BUSINESS AND MANAGEMENT CONSULTANCY ACTIVITIES',
'ADVERTISING BY BROADCAST MEDIA',
'SECURITY AND CLEANING SERVICE',
'FOREIGN TRADE AGENT',
'INSPECTION',
'OTHER COMPUTER RELATED ACTIVITIES',
'SOFTWARE DESIGN, DEVELOPMENT AND IMPLEMENTATION/COMPUTER NETWORK DESIGN AND INSTALLATION',
'AUTHORIZED ACCOUNTANT',
'CONSULTING ENGINEERS',
'SYSTEM CERTIFICATION',
'RENTING SERVICE OF MACHINERIES AND EQUIPMENTS',
'CONVEYANCES',
'AUTHORIZED AUDITOR',
'ABROAD RECRUITMENT AND LINKAGE ACTIVITIES',
'CONSULTANCY SERVICE FOR ENVIRONMENTAL AUDITING AND ENVIRONMENTAL PROTECTION',
'DATA BASE ACTIVITIES AND DATA PROCESSING',
'CONSULTANCY SERVICE FOR ECONOMIC DEVELOPMENT',
'SOLAR ENERGY EQUIPMENTS',
'CONSULTANCY SERVICE FOR INVESTMENT',
'CONSULTANCY SERVICE ON CONSTRUCTION SERVICE',
'CONSULTANCY SERVICE ON EDUCATION',
'CONSULTING ARCHITECTS',
'CONSULTANCY SERVICE FOR TAX AND FINANCE',
'CONSULTANCY ON SOCIAL SCIENCE',
'COMPUTER RELATED ACTIVITIES',
'SUBLETTING/RENTING OF FIXED PROPERTY',
'CONSULTANCY ACTIVITY ON ADVERTISING',
'OTHER BROKERS (INTERMEDIARY)DUTIES',
'RENTING OF LAND TRANSPORT ( CAR) EQUIPMENT',
'CONSTRUCTION SITE PREPARATION CONTRACTOR',
'PROPERTY MANAGEMENT',
'BUILDING, INDUSTRIES, AIRPLANE, RESIDENT HOUSE AND OTHER RELATED CLEANING ACTIVITIES',
'PRODUCT CERTIFICATION',
'CERTIFIED ACCOUNTANT',
'TRAINING/CONSULTANCY SERVICE INFORMATION AND COMMUNICATION TECHNOLOGY',
'ASSET VALUATION',
'MINING CONSULTING ENGINEERS',
'INDUSTRIAL CONSULTING ENGINEER',
'CONSULTANCY SERVICE FOR SOCIAL AFFAIRS',
'COMPUTER NETWORK DESIGN AND CABLE INSTALATION',
'RESEARCH',
'FINANCE AND ADMINISTRATION SERVICES',
'PRINTING AND RELATED ACTIVITIES',
'SPECIAL EVENT ORAGANIZTION ACTIVITIES',
'COMMISSION/BROKERS BUSINESS ACTIVITIES',
'HISTORIC CITES AND BUILDINGS FOR RECREATION AND CARE SERVICES',
'CONSULTANCY SERVICE ON MECHANICAL ENGINEERING',
'CONSULTANCY SERVICE ON CHEMICAL ENGINEERING',
'PRINTING',
'QUALITY MANAGEMENT SYSTEM CONSULTANCY',
'LOGISTICS,SUPPLIES AND SUPPORTIVE ACTIVITIES',
'TAILORING',
'URBAN PLANNING AND RELATED CONSULTANCY',
'GENERAL CONTRACTOR',
'FRESH FRUITS & VEGETABLES',
'MOTOR VECHICLES',
'PROPERTY OWNING AND LETTING',
'INFORMATION COMMUNICATION TECHNOLOGY CONSULTANCY SERVICES',
'REAL ESTATE AND BUSINESS SERVICE',
'COFFEE AND TEA',
'BROKERS DUTIES',
'PULSES/CEREALS',
'Other passenger transport, including the renting of passenger motor vehicles with drivers .',
'DOMESTIC TRADE AGENT',
'INTERNATIONAL BID',
'Unknown',
'RESEARCH AND EXPERIMENTAL DEVELOPMENT ON ECONOMY AND DEVELOPMENT',
'CONSULTANCY SERVICE FOR BUSINESS AND INVESTMENT',
'CONSULTANCY SERVICE FOR STATISTICAL WORK',
'LOCAL LABOR RECRUTMENT AND LINKAGE ACTIVITIES',
'OTHER PRINTING SERVICES',
'CONSULTANCY SERVICE ON ELECTRICAL ENGINEERING',
'MANAGEMENT CONSULTANCY SERVICES',
'LADIES HAIR DRESSING SERVICE',
'DATA CENTER/HOSTING',
'PUBLISHING SERVICE OF BOOKS, BROCHURES AND MUSICAL BOOKS',
'RUBBER, PLASTICS AND PLASTIC PRODUCTSAND BATTERIES',
'TAX AGENT',
'COMMERCIAL REPRESENTATIVE',
'INSTALLATION AND MAINENANCE SERVICES',
'COMPUTER AND COMPUTER ACCESSORIES MAINTENANCE',
'HEALTH CONSULTANCY SERVICE',
'CONSULTANCY SERVICE ON NUTRITION',
'TOUR OPERATORS',
'CONSTRUCTION MATERIALS',
'CONSULTANCY SERVICE ON MINIMG ENGINEERING',
'SOFTWARE DEVELOPMENT ( INCLUDING DESIGN, ENRICHMENT AND IMPLEMENTATION)',
'DIFFERENT EVENTS DECORATING ACTIVITIES',
'CONSULTANCY SERVICE ON FOOD AND BEVERAGES PREPARATION',
'STORAGE AND WAREHOUSING',
'CONSULTANCY SERVICE ON WATER WORKS',
'MEDIA ENTERTAINMENT PRODUCTION AND DISTRIBUTION',
'TRAVEL AGENCY REPRESENTATION AND ONLINE TRAVEL AGENCY ACTIVITY',
'ACTIVITIES AUXILIARY TO PENSION FUNDING',
'OCCUPATIONAL SAFETY & HEALTH CONTROL CONSULTANCY',
'COMMUNICATION, COMPUTER AND RELATED EQUIPMENT',
'MARKET RESEARCH AND PUBLIC OPINION POLLING',
'MICRO FINANCE INSTITUTIONS',
'GIS WORKS SERVICE',
'FOREIGN TRADE AUXILIARY',
'SOFTWARE',
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
    "assets/images/business_lists/14.svg"
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
          'Real Estate',
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
              child: Business_Top_List(index: 13),
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
                  hintText: 'Search Real Estate',
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
                        page:  Real_Estate_listing(index: index,title:title[index],businessCompanyProfile: businessCompanyProfile),
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