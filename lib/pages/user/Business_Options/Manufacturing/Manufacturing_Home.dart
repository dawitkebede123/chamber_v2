import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Agriculture/Agriculture_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Listing.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Manufacturing/Manufacturing_Options.dart';
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


class Manufacturing_Home extends StatefulWidget {
  const Manufacturing_Home({super.key});
  @override
  State<Manufacturing_Home> createState() => _Manufacturing_HomeState();
}

class _Manufacturing_HomeState extends State<Manufacturing_Home> {
  String _query = '';
  List <String> title = [
       'FOOD PRODUCTS',
'MACHINERY FOR MINING, QUARRYING AND CONSTRUCTION',
'SOAP AND OTHER CLEANING COMPOUNDS',
'PLASTICS IN PRIMARY FORM AND OF SYNTHETIC RUBBER',
'PERFUMES, COSMETICS ,ESSENTIAL OILS AND RESINOUS',
'BASIC IRON AND STEEL',
'BAGS, SACKS, RAPPING & PACKING MATERIALS',
'BODIES (COACHWORK) FOR MOTOR VEHICLES; TRAILERS AND SEMI-TRAILERS/MOTOR VEHICLES',
'METAL STRUCTURES FROM ALUMINUM',
'STRUCTURAL METAL PRODUCTS, TANKS, RESERVOIRS AND STEAM GENERATORS',
'FOAM AND SPONGE',
'VENEER SHEETS; PLYWOOD, LAMINBOARD, PARTICLE BOARD AND OTHER PANELS AND BOARDS',
'MAN-MADE FIBRES',
'TOILET TISSUE AND NAPKIN PAPER',
'PAPER AND PAPER PRODUCTS AND STATIONERY',
'OFFICE AND HOUSEHOLD FURNITURE',
'SUGAR, INCLUDING GOLDEN SYRUP AND CASTOR SUGAR',
'PRINTING OF BOOKS, BROCHURES, MUSICAL BOOKS AND OTHERS',
'PHARMACETUCALS,MEDICINALCHEMICALS AND BOTANICAL PRODUCTS FOR HUMAN USE',
'PROCESSING OF FRESH MILK (PASTEURISING, HOMOGENISING, STERILISING AND VITAMINISING)',
'FOOT WEAR',
'ALCOHOLIC DRINKS',
'VEGETABLES AND ANIMAL OIL FAT',
'MEASURING SCALES',
'MILLS FROM STONE',
'TREATMENT AND COATING OF METALS; GENERAL MECHANICAL ENGINEERING ON A FEE OR CONTRACT BASIS',
'REPRODUCTION OF RECORDED MEDIA',
'CORDAGE,ROPE,TWINE AND NETTING',
'PRINTING AND RELATED ACTIVITIES',
'MANUFACTURE OF ELECTRICAL MACHINERY, APPARATUS UTILITIES',
'GARMENT AND RELATED',
'BUILDERS CARPENTRY AND JOINERY',
'BLANKETS, MADE-UP FURNISHING ARTICLES AND STUFFED',
'DAIRY PRODUCTS',
'PLASTIC PRODUCTS',
'BUTTONS, BUCKLES, SLIDE FASTENERS',
'PULP, PAPER AND PAPERBOARD AND OF CONTAINERS MADE FROM PAPER PRODUCT',
'PREPARATION OF CONFECTIONERY, INCLUDING COCOA AND CHOCOLATE',
'STONE PRODUCTS',
'MANUFACTURE OF TYRES AND PLASTIC PRODUCTS',
'ADHESIVES, AND GLUES',
'MANUFACTURING OF GALVANIZED STEEL SHEETS',
'SPECIAL PURPOSE MACHINERY',
'PREPARED ANIMAL FEEDS',
'PVC GRANULE FOR SOLE & PLASTIC SHOE',
'TEXTILES AND GARMENT',
'EDIBLE SALT',
'BAKERY PRODUCTS',
'PRINTING MATERIALS',
'BEER',
'GLASS AND GLASSES PRODUCTS',
'TYRES AND TUBES',
'LEATHER AND HIDE TANNING AND FINISHING',
'BASIC CHEMICALS, EXCEPT FERTILIZERS AND NITROGEN COMPOUNDS',
'REFRACTORY CERAMIC PRODUCTS',
'PAINTS, VARNISHES AND SIMILAR COATINGS, PRINTING INK AND MASTICS',
'CANNED PRESERVED PROCESSED AND DEHYDRATED FRUIT AND VEGETABLES INCIUDING FRUIT JUICES JUICE EXTRACTS AND POTATO FLOUR MEAL',
'FLOUR AND GRAIN MILL PRODUCTS, INCLUDING RICE AND VEGETABLE MILLING; GRAIN MILL RESIDUES',
'FOOD STUFF',
'OPTICAL INSTRUMENTS AND PHOTOGRAPHIC EQUIPMENT',
'SLAUGHTERING, DRESSING AND PACKING OF LIVESTOCK, INCLUDING POULTRY AND SMALL GAME FOR MEAT',
'PROCESSING OF MEAT BY PRODUCTS INCLUDING HIDES, BONES, ETC',
'DRESSING AND DYEING',
'SPICES,CONDIMENTS,VBINGAR,YEAST,EGG PRODUCE SOUPS AND OTHER FOOD PRODUCT.',
'SPINNING OF TEXTILE FIBERS AND WEAVING OF TEXTILES',
'COMPOUND COKING FATS, MARGARINE AND EDIBLE OILS',
'GROWING OF ANIMALS FEED',
'SPINNING, WEAVING AND FINISHING OF YARNS AND FABRICS PREDOMINANTLY OF WOOL AND ANIMAL FIBERS',
'MEDICAL AND SURGICAL EQUIPMENT AND ORTHOPEDIC APPLIANCES',
'LEATHER ARTICLES',
'SOFT DRINK,BOTTLED WATERS/MINERAL WATERS',
'DISTILLING, RECTIFYING AND BLENDING OF SPIRITS; ETHYL ALCOHOL PRODUCTION FROM FERMENTED MATERIALS;MANUFACTURING OF WINE',
'STRUCTURAL NON-REFRACTORY CLAY AND CERAMIC PRODUCTS',
'PRODUCTS OF WOOD(EXCEPT FURNITURE)',
'SPINNING, WEAVING AND FINISHING OF TRADITIONAL CLOTHES',
'MOTOR VECHICLES',
'EDUCATIONAL SUPPORT EQUIPMENTS',
'STRUCTURAL METAL PRODUCTS',
'PASTA, MACARONI, NOODLES, COUSCOUS AND SIMILAR FARINACEOUS PRODUCTS',
'CEMENT, LIME AND PLASTER',
'COFFEE AND TEA',
'INSULATED WIRE AND CABLE',
'VETERINARY DRUGS, MEDICINES AND EQUIPMENTS',
'PESTICIDES AND AGRO-CHEMICAL PRODUCTS',
'TOBACCO PRODUCTS',
'CANDLES AND MATCH',
'WINE',
'OFFICE, ACCOUNTING AND COMPUTING MACHINERY',
'METAL STRUCTURES FROM STEEL',
'COKE OVEN PRODUCTS',
'CLEANING, COSMOTICS AND INPUTS',
'textile and textile articles,textile ascceris',
'LUBRICANTS & GREASE',
'MAN MADE FIBER',
'manufacture of knitted and crocheted fabrics and articles',
'ELECTRICITY DISTRIBUTION AND CONTROL APPARATUS',
'OFFICE & HOUSE HOLD EQUIPMENTS',
'PRINTING',
'COFFEE, COFFEE SUBSTITUTES AND TEA',
'SHEET & PLATE GLASS, GLASS BLOCKS, TUBES & RODS; GLASS FIBERS & GLASS WOOL',
'GASES',
'MADE-UP TEXTILE ARTICLES, EXCEPT APPAREL',
'IRON, STEEL AND METALIC MINERALS',
'ELECTRIC LAMPS AND LIGHTING EQUIPMENT',
'MANUFACTURING OF FURNITURE',
'TRADITIONAL FOODS',
'ARTICLES OF CONCRETE, CEMENT AND PLASTER',
'MOTOR VEHICLE PARTS AND ACCESSORIES',
'FERTILIZERS AND NITROGEN COMPOUNDS',
'CUTLERY, HAND TOOLS AND GENERAL HARDWARE',
'POLISHES,WAXES ,DRESSINGS AND INCENSE',
'NON-METALLIC MINERAL PRODUCTS',
'TELEVISION AND RADIO RECEIVERS, SOUND OR VIDEO RECORDING OR REPRODUCING APPARATUS AND ASSOCIATED GOODS',
'FAST FOODS',
'FABRICATED METAL PRODUCTS',
'FORGING,PRESSING STAMPING AND ROLL-FORMING OF METAL;POWDER METALLURGY',
'CRUDE OIL AND OILSEED CAKE AND MEAL',
'MANUFACTUR OF CONSUMER ELECTRONIC EQUIPMENT (TV,DVD,RADIO AND SIMILAR EQUIPMENT)',
'AIRCRAFT AND SPACECRAFT',
'GENERAL PURPOSE MACHINERY',
'COMPUTER AND COMPUTER ACCESSORIES AND PERIPHERAL EQUIPMENT',
'GRINDING/MANUFACTURING OF GRAINS',
'MANUFACTURE OF WOOD AND WOOD PRODUCTS',
'INSTALLATION, AND FIXING OF ALUMINUM WINDOWS AND DOORS/ ALUMINUM WORKS',
'HOUSEHOLD ELECTRICAL APPLIANCES AND EQUIPMENT',
'PACKAGING MATERIALS',
'SPINNING, WEAVING AND FINISHING OF TEXTILES',
'SOFTWARE DEVELOPMENT ( INCLUDING DESIGN, ENRICHMENT AND IMPLEMENTATION)',
'WEARING AND APPRAL, EXCEPT FUR APPAREL',
'ELECTRICAL EQUIPMENT',
'RECYCLING OF NON-METAL WASTE AND SCRAP',
'ELECTROMECHANICAL WORK',
'Unknown',
'CUTTING, SHAPING AND FINISHING OF STONE',
'CASTING OF IRON AND STEEL',
'CONFECTIONERY INCLUDING COCOA AND CHOCOLATE',
'HONEY AND HONEY PRODUCTS',
'OTHER TANNING AND DRESSING OF LEATHER MANUFACTURE OF BAGGAGE, HANDLBAGS,SADDLER AND HARNESS.',
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
    "assets/images/business_lists/11.svg"
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
          'Manufacturing',
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
              child: Business_Top_List(index: 2),
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
                  hintText: 'Search Manufacturing',
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
                        page:  Manufacturing_listing(index: index,title:title[index],businessCompanyProfile: businessCompanyProfile),
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