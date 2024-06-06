import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Agriculture/Agriculture_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Import/Import_Options.dart';
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


class Import_Home extends StatefulWidget {
  const Import_Home({super.key});
  @override
  State<Import_Home> createState() => _Import_HomeState();
}

class _Import_HomeState extends State<Import_Home> {
  String _query = '';
   List <String> title = [
     'MACHINERY AND EQUIPMENT',
'IRON AND STEEL',
'AGRICULTURAL MACHINERY AND EQUIPMENT',
'INDUSTRIAL MACHINERY , EQUIPMENT AND ITS SPARE PARTS',
'STATIONERY',
'LABORATORY EQUIPMENT AND MEDICAL EQUIPMENTS',
'FOREIGN TRADE AUXILIARY',
'FABRICATED METALS',
'SUGAR',
'CAR BATTERY',
'DRY CELLS',
'PESTICIDES AND AGROCHEMICALS',
'CHEMICALS AND CHEMICAL PRODUCTS',
'TORCH LIGHT',
'EDIBLE OILS & FATS',
'SPONGES AND FOAM',
'CONSTRUCTION EQUIPMENT AND ITS SPARE PARTS',
'CRUDE TYRE',
'VEHICLE SPARE PARTS',
'MOTORCYCLES, WHEEL VEHICLES AND THEIR PARTS',
'NEW MOTOR VEHICLES',
'TELECOMMUNICATIONS EQUIPMENT',
'ELECTRONIC VALVES AND TUBES AND ELECTRONIC COMPONENTS',
'FOREIGN TRADE AGENT',
'HUMAN HEALTH MEDICAL SUPPLIES AND EQUIPMENTS',
'MEDICINES',
'FOOD STUFF',
'HOUSEHOLD GOODS',
'SANITARY AND SANITARY ACCESSORIES',
'SOLAR ENERGY EQUIPMENTS AND ELECTRICAL EQUIPMENT',
'AGRICULTURAL RAW MATERIALS',
'EDIBLE SALT',
'DAIRY PRODUCTS',
'FRUITS & VEGETABLES',
'Meat & poultry',
'PLANT SEED',
'COSMETICS ,ESSENTIAL OILS AND RESINOUS ,PERFUME AND CHEMICALS FOR PERFUMES',
'SOAPS, DETERGENTS, TOILETRIES, CHEMICALS FOR CLEANSING, POLISHING AND CLEANSING',
'VETERINARY DRUGS, MEDICINES AND EQUIPMENTS',
'PAPER AND PAPER PRODUCTS',
'READYMADE CLOTHES & OTHER WEARS',
'GENERATORS/MOTORS /COMPRESSORS/PUMPS/THEIR ACCESSORIES/PARTS',
'STEEL PIPE AND TUBE MILLS',
'SAWN TIMBER , PLYWOOD AND RELATED PRODUCTS',
'TOYS AND GAMES',
'AGRICULTURAL PRODUCTS/CEREALS',
'CHEMICAL FERTILIZERS',
'PLASTICS RAW MATERIAL',
'SPORTING GOODS AND EQUIPMENT',
'BOOKS AND MAGAZINES',
'METAL ,NON METALS, METAL ORES AND SCRAPS',
'PACKAGING MATERIALS',
'FURNISHINGS (INCLUDING CURTAINS, CARPETS, WALL PAPER)/SANITARY TOOLS /BROOM,',
'FURNITURE, HOME AND OFFICE FURNISHINGS AND HOUSEHOLD AND OFFICE EQUIPMENT',
'CROCKERY, CUTLERY AND KITCHEN UTENSILS',
'BAKERY PRODUCTS',
'SECURITY AND FIRE-FIGHTING EQUIPMENT',
'FOOT WEAR AND LETHER GOODS',
'MEDICAL EQUIPMENTS',
'IMPORT TRADE',
'TEXTILE FABRICS & CLOTHINGS',
'STRUCTURAL CLAY AND CONCRETE PRODUCTS',
'COMMERCIAL REPRESENTATIVE',
'CONSTRUCTION MATERIALS, HARDWARE, PLUMBING',
'NAILS/PINS/BOLTS AND THE LIKE',
'GLASS AND GLASSES PRODUCTS',
'PAINTS (INCLUDING VARNISHES,ADEHASIVE,GLUES AND SUPPLIES)',
'ELECTRICAL EQUIPMENTS AND APPLIANCES',
'COMMUNICATION, COMPUTER AND RELATED EQUIPMENT',
'HOUSEHOLD ELECTRICAL APPLIANCES AND EQUIPMENT',
'TEXTILE FIBER,COTTON,THREAD AND APPAREL',
'STATIONARY MATERIALS, PAPER AND PAPER PRODUCTS',
'LIFTS, ESCALATORS AND INDUSTRIAL AND OFFICE AIR-CONDITIONING EQUIPMENT',
'YARNS AND THREADS',
'IMPORTING OF VEHICLES SPARE PARTS,REGULATORY EQUIPMENTS AND JEWELRY/DECOR SUPPLIES',
'HOUSEHOLD AND OFFICE FURNITURE, REQUZITE, BOARDS, APPLIANCES',
'USED MOTOR VEHICLES',
'COMPUTER AND COMPUTER ACCESSORIES AND PERIPHERAL EQUIPMENT',
'SOFTWARE',
'LIGHTING AND LIGHTING ACCESSORIES',
'PETRO CHEMICAL PRODUCTS',
'NON METALLIC MINERALS (CLAY,CERAMICS,GYPSUM,LIME AND THEIR PRODUCT)',
'SCIENTIFIC, CONTROLLING AND PRECISION EQUIPMENT',
'BEVERAGES',
'BASIC INDUSTRIAL CHEMICALS',
'RUBBER, PLASTICS AND PLASTIC PRODUCTSAND BATTERIES',
'METAL AND NON METAL SCRAPS',
'GAS, NATURAL AND MANUFACTURED',
'NON FERROUS METALS',
'COMMERCIAL FOOD SERVICE EQUIPMENT',
'BROADCASTING EQUIPMENTS',
'TELECOMM AND COMPUTERS ACCESSORIES',
'PHOTOGRAPHIC APPARATUS, EQUIPMENT AND SUPPLIES AND OPTICAL GOODS',
'LEATHER PRODUCTS',
'BICYCLES PARTS',
'HEATING EQUIPMENT AND RELATED MATERIALS',
'GENERAL HARDWARE',
'DYEING, TANNING AND COLORING MATERIALS',
'MATTRESSES, CUSHIONS, BLANKETS',
'GARMENT AND RELATED',
'CLOCKS AND WATCHES',
'PROCESSED TOBACCO',
'IMPORTING OF VEHICLES',
'VEHICLES BODIES AND TRAILERS',
'ELECTRICAL AND WIRING ACCESSORIES',
'INCENSE & GUMS',
'TELECOMMUNICATION EQUIPMENTS/ACCESSORIES/SALES/MAINTENANCE',
'COAL, COKE AND BRIQUETTES',
'WINE',
'PLASTICS IN PRIMARY FORMS AND NON-PRIMARY FORMS',
'BASIC CHEMICALS, EXCEPT FERTILIZERS',
'APPAREL AND CLOTHING',
'ALCOHOLIC DRINKS',
'MARITIME CONSULTANCY SERVICE',
'HOUSHOLDS INCLUDING MATTRESSES,CUSHIONS,BLANKETS ETC',
'CEMENTS',
'CLEANING AND COSMOTICS',
'CANDLES AND MATCH',
'LOGS AND TIMBER',
'INDUSTRIAL, AGRICULTURAL AND CONSTRUCTION MACHINERIES AND OTHER RELATED WORKS',
'FOOD ADDITIVES',
'ELECTRIC MOTORS,GENERATORS AND TRANSFORMERS',
'ELECTRICITY DISTRIBUTION AND CONTROL APPARATUS',
'DOMESTIC TRADE AGENT',
'BAGS, LUGGAGE’S AND RELATED PRODUCTS',
'COMMISSION/BROKERS BUSINESS ACTIVITIES',
'MUSICAL INSTRUMENTS AND SCORES(FILM, THEATER AND RELATED INSTRUMENTS)',
'WIRING AND CABLES ACCESSORIES',
'PETROLEUM AND PETROLEUM PRODUCTS',
'Radiation Emitting Equipments& Radio active Sources',
'SERVICE ESTABLISHMENT EQUIPMENT AND SUPPLIES (EG BEAUTY SALON EQUIPMENT)',
'EDUCATIONAL SUPPORT EQUIPMENTS',
'INDUSTRIAL MACHINERY AND EQUIPMENT',
'PETROCHEMICAL/VASELINE, GRYCYLINE ETC/ PRODUCTS',
'ELECTRICITY',
'LIVESTOCK AND LIVESTOCK PRODUCTS',
'SOUVENIRS , ARTIFACTS AND ARTIFICIAL JEWELRY',
'MOTOR VEHICL SPARE PARTS',
'TEXTILES FIBERS AND YARN',
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
    "assets/images/business_lists/8.svg"
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
          'Import',
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
              child: Business_Top_List(index: 1),
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
                  hintText: 'Search Import',
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
                        page:  Import_listing(index: index,title:title[index],businessCompanyProfile: businessCompanyProfile),
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