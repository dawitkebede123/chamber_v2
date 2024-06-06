import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Agriculture/Agriculture_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Listing.dart';
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


class Export_Home extends StatefulWidget {
  const Export_Home({super.key});
  @override
  State<Export_Home> createState() => _Export_HomeState();
}

class _Export_HomeState extends State<Export_Home> {
  String _query = '';
  List <String> title = [
'ACCESORIES & COMPONENTS',
    'AGRICULTURAL PRODUCTS',
'AGRICULTURAL RAW MATERIALS',
'ALUMINIUM PRODUCTS',
'ANIMAL FEED',
'APPAREL AND CLOTHING',
'BAKERY PRODUCTS',
'BEER',
'BEVERAGE CROPS',
'BEVERAGES',
'BEEWAX',
'BOOKS AND MAGAZINES',
'BOOKS AND STATIONARY MATERIALS',
'BOTTLED WATER',
'BROKERS DUTIES',
'CLEANING AND COSMETICS',
'COFFEE',
'COFFEE AND TEA',
'CONSTRUCTION EQUIPMENT AND ITS SPARE PARTS',
'COTTON',
'CROCKERY, CUTLERY AND KITCHEN UTENSILS'
'CULTURAL CLOTHES',
'CUT FLOWERS AND PLANTS',
'DAIRY PRODUCTS',
'EDIBLE OILS & FATS',
'Ethanol and Molasses',
'EXPORT TRADE',
'EXPORT TRADE IN LIVE ANIMALS AND ANIMAL BY PRODUCTS',
'EXPORT OF BEVERAGE CROPS (EXCEPT COFFEE AND TEA)',
'FEEDING STUFF FOR ANIMALS',
'FLOUR',
'FOOD PRODUCTS',
'FOOD STUFF',
'FOOTWEAR AND LEATHER GOODS',
'FRUITS & VEGETABLES',
'GRAIN MILL SPARE PARTS',
'HONEY AND HONEY PRODUCTS',
'HOUSEHOLD AND OFFICE FURNITURE, REQUZITE, BOARDS, APPLIANCES',
'HOUSEHOLD ELECTRICAL APPLIANCES AND EQUIPMENT',
'INCENSE & GUMS',
'INEDIBLE ANIMAL PRODUCT',
'INDUSTRIAL MACHINERY , EQUIPMENT AND ITS SPARE PARTS',
'IRON AND STEEL',
'LIVESTOCK',
'LIVESTOCK AND LIVESTOCK PRODUCTS',
'LIVEStock PRODUCTS',  // Likely a typo, assuming LIVESTOCK PRODUCTS
'MADE-UP TEXTILE ARTICLES CORDAGE, ROPE, TWINE AND NETTING, BAGS, SACKS, RAPPING & PACKING MATERIALS',
'MATERIALS AND PAINTING INKS USED FOR PROMOTION AND ADVERTISING',
'MEAT & POULTRY',
'MEDICINAL CROPS',
'MEDICINES',
'METAL ,NON METALS, METAL ORES AND SCRAPS',
'MINERALS AND MINERAL PRODUCTS',
'MUSICAL, RECREATIONAL, CRAFT AND SOUVENIR GOODS',
'NONE METALLIC MINERALS',  // Likely a typo, assuming NON-METALLIC MINERALS
'NON FERROUS METALS',
'NON METALLIC MINERALS (CLAY,CERAMICS,GYPSUM,LIME AND THEIR PRODUCT)',
'NON METALLIC SCRAPS AND WASTES',
'OILSEEDS',
'PACKAGING MATERIALS',
'PASTAS MACARONI NOODULE AND ALIKE PRODUCTS',
'PEPPER AND SPICES',
'PHARMACEUTICAL AND MEDICALS EQUIPMENTS',
'PHOTOGRAPHIC APPARATUS, EQUIPMENT AND SUPPLIES AND OPTICAL GOODS',
'PLASTICS IN PRIMARY FORMS AND NON-PRIMARY FORMS',
'PROCESSED AGRICULTURAL PRODUCTS',
'PROCESSED COFFEE',
'PROCESSED PULSES',
'PULSES',
'PULSES/CEREALS',
'SAILS',  // Likely a typo, assuming something else
'SHEEP / GOATS & RELATED PRODUCTS',
'SOAPS, DETERGENTS, TOILETRIES, CHEMICALS FOR CLEANSING, POLISHING AND CLEANSING',
'SOUVENIRS , ARTIFACTS AND ARTIFICIAL JEWELRY/CULTURAL CLOTHES',
'STATIONERY',
'STRUCTURAL CLAY AND CONCRETE PRODUCTS',
'SUGAR',  // Likely a typo, assuming SUGAR
'TANTALUM MINERALS',
'TEA',
'TEXTILE AND LEATHER PRODUCTS',
'TEXTILE FIBERS, COTTON, YARN AND APPAREL',
'TEXTILE PRODUCTS EXCEPT GARMENT',
'Textile and textile articles,textile ascceris',  // Likely a typo, assuming something else
'TRADITIONAL DRINK SERVING HOUSES',
'USED MOTOR VEHICLES',
'WILD ANIMAL PRODUCTS (TAXIDERMY)',
'WOOL, HIDES, SKINS AND FEATHERS',
'PAPER AND PAPER PRODUCTS',
'ANIMAL & WASTE PRODUCTS',
'ANIMAL BY PRODUCTS',
'CANDLES AND TEWAF',
'CLEANING AND COSMETICS EQUIPMENTS',
'COAL, COKE AND BRIQUETTES',
'COMMUNICATION, COMPUTER AND RELATED EQUIPMENT',
'CONSTRUCTION MATERIALS',
'CONSTRUCTION MATERIALS HARDWARE, PLUMBING',
'CONSTRUCTION MATERIALS HARDWARE, PLUMBING AND HEATING EQUIPMENT AND SUPPLIES',
'COSMETICS ,ESSENTIAL OILS AND RESINOUS ,PERFUME AND CHEMICALS FOR PERFUMES',
'COTTON, TEXTILE FIBERS,YARN, TEXTILES AND TEXTILES CLOTHING',
'ዶክመንቱ አልተሟላም (ንግድ ፈቃዱ ከጀርባ ያለው መረጃ የለም )',  // Untranslated string remains unchanged
'EDUCATION EQUIPMENT AND TOOLS',
'ELECTRICAL EQUIPMENTS AND APPLIANCES',
'EXPORT TRADE IN BEVERAGE PRODUCTS',
'EXPORT TRADE IN INTERMEDIATE PRODUCTS,WASTE AND SCRAPS',
'EXPORT TRADE IN PROCESSED COFFEE AND COFFEE LEAVES',
'FABRICATED METALS',
'FOOD ADDITIVES',
'HUMAN HEALTH MEDICAL SUPPLIES AND EQUIPMENTS',
'HUMAN HEALTH MEDICAL SUPPLIES AND EQUIPMENTS',  // Duplicate of HUMAN HEALTH MEDICAL SUPPLIES AND EQUIPMENTS
'IMPORTING OF VEHICLES',
'INDUSTRIAL, AGRICULTURAL AND CONSTRUCTION MACHINERY AND EQUIPMENTS',
'INDUSTRIAL, AGRICULTURAL AND CONSTRUCTION MACHINERIES AND OTHER RELATED WORKS',
'LOG AND TIMBER',
'LOGS AND TIMBER',
'METAL AND NON METAL SCRAPS',
'NON METALLIC MINERALS',
'PAPER AND PAPER PRODUCTS AND STATIONERY MATERIALS',
'PLANT SEED',  // Likely a typo, assuming PLANT SEEDS
'PLANT SEEDS',
'PLUMBING',
'RAW RUBBER AND FIBER PRODUCTS',
'RECORDED CD’S, VCD’S AND RELATED PRODUCTS',
'RUBBER, PLASTICS AND PLASTIC PRODUCTSAND BATTERIES',
'SOFTWARE',
'STATIONARY MATERIALS, PAPER AND PAPER PRODUCTS',
'TRADE IN TEXTILES',
'VEGETABLES AND ANIMAL OIL FAT',
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
    "assets/images/business_lists/5.svg"
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
          'Export',
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
              child: Business_Top_List(index: 0),
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
                  hintText: 'Search Export',
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
                              //  final item = categories[index];
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
                                         child:SvgPicture.asset(categories[index])
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
                        page:  Export_listing(index: index,title:title[index],businessCompanyProfile: businessCompanyProfile),
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