import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Agriculture/Agriculture_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Wholesale/Wholesale_Listing.dart';
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


class Wholesale_Home extends StatefulWidget {
  const Wholesale_Home({super.key});
  @override
  State<Wholesale_Home> createState() => _Wholesale_HomeState();
}

class _Wholesale_HomeState extends State<Wholesale_Home> {
  String _query = '';
    List <String> title = [
      'AUTOMOTIVE FUEL & LUBRICANTS IN GAS STATION /CAR WASH SERVICE',
'FLORA FOAM',
'SUPER MARKET',
'WHOLESALE TRADE',
'PHARMACEUTICAL AND MEDICAL GOODS, COSMETIC AND TOILET ARTICLES',
'Retail trade in reading matter and stationery',
'HYPER MARKET',
'BAKERY PRODUCTS',
'GRAIN MILLS MACHINERY AND ITS SPARE PARTS',
'CEREALS',
'SAND,GRAVEL STONE AND RELATED MATERIALS',
'FOOD STUFF',
'WOOL, HIDES, SKINS AND FEATHERS',
'HOUSEHOLD FURNITURE APPLIANCES, ARTICLES AND EQUIPMENT',
'ELECTRICAL EQUIPMENT',
'OFFICE MACHINES AND EQUIPMENT(INCLUDING ACCESSORIES)',
'PLASTICS IN NON-PRIMARY FORMS',
'MEDICAL EQUIPMENTS, PHARMACEUTICAL, COSMETICS, PERFUMERY AND SANITARY ARTICLES',
'CROCKERY, CUTLERY AND KITCHEN UTENSILS',
'BOOKS AND STATIONARY MATERIALS',
'HARD WARE AND COMPUTER ACCESSORIES /MAINTENANCE',
'SOFT DRINKS',
'SUGAR',
'GAS, NATURAL AND MANUFACTURED',
'PLASTIC PRODUCTS',
'COFFEE',
'LEATHER PRODUCTS',
'HOUSE HOLD AND OFFICE FURNISHINGS AND DECORATIVE (CURTAIN, CARPET AND WALL PAPER)',
'GENERAL HARDWARE',
'GARMENT AND RELATED',
'EDUCATION EQUIPMENTS',
'SHOES',
'VEHICLES ACCESSORIES AND DECOR',
'VETERINARY DRUGS, MEDICINES AND EQUIPMENTS',
'COTTON, TEXTILE FIBERS,YARN, TEXTILES AND TEXTILES CLOTHING',
'RETAIL TRADE OF VEHICLES',
'CONSTRUCTION MATERIALS HARDWARE, PLUMBING AND HEATING EQUIPMENT AND SUPPLIES',
'LOGS,TIMBER AND FOREST PRODUCTS',
'BROKER IN VEHICLES RENTING AND SAILING',
'RETAIL TRADE IN OUTSIDE STORES',
'BASIC INDUSTRIAL CHEMICALS EXCEPT FERTILIZERS',
'PETROLEUM, PETROLEUM PRODUCTS& RELATED MATERIALS',
'HOUSEHOLD AND OFFICE FURNITURE, REQUZITE, BOARDS, APPLIANCES',
'COMPUTER AND COMPUTER ACCESSORIES AND PERIPHERAL EQUIPMENT',
'STATIONERY',
'FRESH FRUITS & VEGETABLES',
'TRADITIONAL WEAR',
'APPAREL AND CLOTHING',
'MUSICAL INSTRUMENTS',
'SOUVENIRS,ARTIFACT AND ARTIFICIAL JEWELRY/ TRADITIONAL WEAR',
'BEVERAGES',
'PHOTOGRAPHIC AND OPTICAL INSTRUMENTS',
'TEXTILES AND LEATHER GOODS',
'SANITARY AND SANITARY ACCESSORIES',
'AGRICULTURAL MACHINERY AND EQUIPMENT',
'ELECTRIC MITAD AND MAINTENANCE',
'COSMETICS ,ESSENTIAL OILS AND RESINOUS ,PERFUME AND CHEMICALS FOR PERFUMES',
'HOUSE MADE FOOD PRODUCT',
'SOAPS, DETERGENTS, TOILETRIES, CHEMICALS FOR CLEANSING, POLISHING AND CLEANSING',
'TYRES AND CAR BATTERIES',
'JEWELLERY, WATCHES AND CLOCKS',
'SECURITY AND FIRE FIGHTING EQUIPMENT',
'CHEMICALS',
'MEAT & MEAT PRODUCTS ,POULTRY',
'MINI MARKET/ SHOP',
'PEPPER & SPICES',
'PROFESSIONAL SCIENTIFIC, CONTROLLING AND PRECISION EQUIPMENT',
'WHOLESALE OF GENERAL HARDWARE',
'SALES OF NEW PARTS AND ACCESSORIES',
'HOUSEHOLD GOODS',
'PAGERS, HAND PHONES AND TELECOMMUNICATIONS APPARATUS (EGPALMTOPS, SMART WATCHES, WEARABLE COMPUTER AND ELECTRONIC BOOKS)',
'TELECOMMUNICATION EQUIPMENTS/ACCESSORIES/SALES/MAINTENANCE',
'CONFECTIONERY INCLUDING COCOA AND CHOCOLATE',
'RETAIL TRADE IN BEVERAGE PRODUCTS',
'RETAIL TRADE IN FOOD PRODUCTS',
'AGRICULTURAL RAW MATERIALS',
'BROKERS DUTIES',
'CONSTRUCTION MATERIALS',
'INDUSTRIAL,AGRICULTURAL AND CONSTRUCTION MACHINERY AND EQUIPMENTS',
'FUEL & LUBRICANTS OUT SIDE GAS STATION',
'Retail trade of construction equipment (e.g. concrete mixer)',
'BOTTLED WATER',
'FABRICATED METALS EXCEPT GENERAL HARD WARE(EG STEEL PIPES)',
'MENS LADIES AND BOYS CLOTHING',
'LADIES AND GIRLS CLOTHING',
'SOLAR ENERGY EQUIPMENTS',
'FRUITS & VEGETABLES',
'OTHER WHOLESALE TRADE',
'PRECIOUS STONES, JEWELRY AND SILVERWARES',
'WHOLESALE TRADE IN HOUSEHOLD ELECTRICAL APPLIANCES AND EQUIPMENT (INCLUDING HOUSEHOLD AIR-CONDITIONERS)',
'RETAIL TRADE OF FOOT WEAR, LEATHER AND RELATED PRODUCTS',
'ELECTRICITY DISTRIBUTION AND CONTROL APPARATUS',
'LIGHTING AND LIGHTING ACCESSORIES',
'CEMENTS',
'CHILDREN CLOTHING',
'CUT FLOWERS AND PLANTS',
'WIRING AND CABLES ACCESSORIES',
'STRUCTURAL CLAY AND CONCRETE PRODUCTS(EG MOSAIC TILES, BRICKS)',
'TELECOMMUNICATIONS EQUIPMENT',
'SAWN,FIBER, PLYWOOD AND RELATED PRODUCTS',
'PAINTS (INCLUDING VARNISHES AND SUPPLIES)',
'RETAIL TRADE OF HOUSE MADE FOOD PRODUCT',
'MEDICINES',
'METAL ,NON METALS, METAL ORES AND SCRAPS',
'FURNISHINGS (INCLUDING CURTAINS, CARPETS, WALL PAPER)/SANITARY TOOLS /BROOM,',
'BROADCASTING EQUIPMENTS',
'HOUSE HOLD FURNITURE(BLANKET, BED SHEET, QUILT AND PILLOW)',
'CAR DECOR',
'ELECTRIC MOTORS,GENERATORS AND TRANSFORMERS',
'COFFEE AND TEA',
'COSMOTICS,PERFUMERY AND SANITARYARTICLES',
'HOUSEHOLD ELECTRICAL APPLIANCES AND EQUIPMENT',
'VEHICLES SPARE PARTS AND ARTIFICIAL JEWLERY/DECOR',
'CONSTRUCTION EQUIPMENT MACHINERIES AND ACCESSORIES',
'OILSEEDS',
'INCENSE & GUMS',
'MOTOR CYCLE, BICYCLE AND TRI CYCLE (BAJAJ) PARTS AND ACCESSORIES',
'CRUDE RUBBER',
'RECORDED CD’S, VCD’S AND RELATED PRODUCTS',
'BAGS, LUGGAGE’S AND RELATED PRODUCTS',
'INDUSTRIAL MACHINERY AND EQUIPMENT',
'SMALL SHOP',
'PESTICIDES AND HERBICIDES',
'PESTICIDES AND AGRO-CHEMICAL PRODUCTS',
'SANITARYWARE AND COSMOTICS',
'SAWN TIMBER , PLYWOOD AND RELATED PRODUCTS',
'HUMAN HEALTH MEDICAL SUPPLIES AND EQUIPMENTS',
'PAPER AND PAPER PRODUCTS',
'PULSES/CEREALS',
'TOYS AND GAMES',
'PROCESSED COFFEE',
'OTHER BROKERS (INTERMEDIARY)DUTIES',
'FURNITURE, HOME AND OFFICE FURNISHINGS AND HOUSEHOLD AND OFFICE EQUIPMENT',
'SPORTING GOODS AND EQUIPMENT',
'BROKER IN HOUSE RENTING AND SALING',
'Unknown',
'CHEMICALS AND CHEMICAL PRODUCTS',
'SHOES AND LEATHER GOODS',
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
    "assets/images/business_lists/9.svg"
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
          'Wholesale',
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
              child: Business_Top_List(index: 10),
            ),
          )
      ],
             body: Column(
              children: [
                
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _query = value.toLowerCase();
                  });
                },
                decoration: const InputDecoration(
                  // labelText: 'Search',
                  hintText: 'Search Wholesale',
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
                        page:  Wholesale_listing(index: index,title:title[index],businessCompanyProfile: businessCompanyProfile),
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