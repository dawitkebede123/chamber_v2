
import 'package:chamber_of_commerce/main.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_Options/Export/Export_Home.dart';
import 'package:chamber_of_commerce/pages/user/Company%20_business.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Company_detail.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/GridSingle.dart';
import 'package:chamber_of_commerce/widgets/SearchField.dart';
import 'package:chamber_of_commerce/widgets/SearchFieldBusiness.dart';
import 'package:chamber_of_commerce/widgets/business_top_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';


class Business_listing extends StatefulWidget {
  final int index;
  final String title;
  final List<Map<String, String>> businessCompanyProfile ;
  const Business_listing({super.key,required this.index,required this.title,required this.businessCompanyProfile});
  @override
  State<Business_listing> createState() => _Business_listingState();
}

class _Business_listingState extends State<Business_listing> {
   Stream<DatabaseEvent>? _userStream;
  // final Map data = widget.businessCompanyProfile[""];
   
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

  // void _searchCompany(String searchTerm) {
  //   setState(() {
  //     // _searchTerm = searchTerm.toLowerCase();
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    //sample data containing company name, log(if there is no logo give a default one
    // ),
  //  
    //  final data
    
     final  _items = [
     'assets/images/business_lists/sample/1.svg',
     'assets/images/business_lists/sample/2.svg',
     'assets/images/business_lists/sample/3.svg',
     'assets/images/business_lists/sample/4.svg',
     'assets/images/business_lists/sample/5.svg',
     'assets/images/business_lists/sample/6.svg',
    //  'assets/images/business_lists/sample/mengesha.svg',
    //  'assets/images/business_lists/sample/tomoca.svg',


   

  ];
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





      appBar: AppBar(
        // Padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 10.0, bottom: 5.0),
        backgroundColor:Color.fromARGB(255, 255, 255, 255),
      
         leading: Row(
           children: [
             Column(
               children: [
                 IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed:()=>{
                   Navigator.push(
                      context,
                       TransparentRoute(
               
                page:  Business(),
              ),
                    ),
                    }
                  ),
          //           Padding(
          //   padding: const EdgeInsets.only(left: 20.0,right: 20,top: 4,bottom: 4),
          //   child: Container(
          //     height: MediaQuery.of(context).size.height*0.2,
          //     child: SearchField()),
          // ),
               ],
             ),
            
           ],
         ),
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title: Text(
          widget.title,
          style: const TextStyle(
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
      // ListView(
    // children: [
    ListView(
        children: [
          
              StreamBuilder<DatabaseEvent>(builder:  (context, snapshot) {
                       return Column(
                         children: [
                  //          const SizedBox(
                  // height: 400,
                  // child: Business_Top_List()),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0,right: 20, bottom: 10),
                            child: SearchFieldBusiness(),
                          ),
                           
                         
                           
                           
                           
                                                            Container(
                                                                                                         // Set desired height or adjust with constraints
                                                                                                           height: MediaQuery.of(context).size.height * 0.81, // Adjust height as needed
                                                                                                         // color: Color.fromARGB(255, 142, 139, 139), // Optional background color
                                                                                                         child: _buildContent(snapshot), // Call a separate function
                                                                                                       ),
                         ],
                       );
                    }, stream: _userStream,)


        ],
      ),
          bottomNavigationBar:const CustomeButtomNavBar(index: 2,),


     
    );
    return scaffold;
  }

  ///
  ///
  ///
  
    Widget _buildContent(AsyncSnapshot<DatabaseEvent> snapshot) {
      
      if (snapshot.hasError) {
    return Center(
      child: Text('Error: ${snapshot.error}'),
    );
  }

  if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(child: CircularProgressIndicator());
  }

  final data = snapshot.data!.snapshot.value as List<dynamic>;
  List<dynamic> filteredBusinesses = data;
  if (data.isEmpty) {
    return const Center(child: Text('No businesses found'));
  }
  //based on the index categorize Field Of Business
  if(widget.index == 0){
    // index = 0;
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("export") ? [element] : [];
  }).toList();
    
  }
  if(widget.index == 5){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("agriculture") ? [element] : [];
  }).toList();

  }
  if(widget.index == 2){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("manufacturing") ? [element] : [];
  }).toList();

  }
  if(widget.index == 3){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("construction") ? [element] : [];
  }).toList();
  
  }
  if(widget.index == 4){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("transport") ? [element] : [];
  }).toList();

  }
  if(widget.index == 1){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("import") ? [element] : [];
  }).toList();

  }
  if(widget.index == 6){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("financial inter") ? [element] : [];
  }).toList();

  }
  if(widget.index == 7){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("community") ? [element] : [];
  }).toList();

  }
  if(widget.index == 8){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("electric") ? [element] : [];
  }).toList();

  }
  if(widget.index == 9){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("hotel") ? [element] : [];
  }).toList();

  }
  if(widget.index == 10){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("wholesale") ? [element] : [];
  }).toList();

  }
  if(widget.index == 11){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("maintennance") ? [element] : [];
  }).toList();

  }
  if(widget.index == 12){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("mining") ? [element] : [];
  }).toList();

  }
  if(widget.index == 13){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("real estate") ? [element] : [];
  }).toList();

  }

  // int index= 0;
  // if(widget.index == 14){
  //    filteredBusinesses = data.expand((element) {
  //   // ... filtering logic using entry.value as Map<String, dynamic>
  //   final companyName = element['Field Of Business']?.toString().toLowerCase() ?? '';
  //   return companyName.startsWith("transport") ? [element] : [];
  // }).toList();

  // }
  // final filteredBusinesses = data.expand((element) {
  //   // ... filtering logic using entry.value as Map<String, dynamic>
  //   final companyName = element['Campany Name']?.toString().toLowerCase() ?? '';
  //   return companyName.startsWith(_searchTerm) ? [element] : [];
  // }).toList();

  return filteredBusinesses.isEmpty
    ? const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text("No Business Found"),
        ) ,
      )
    :  
    
    NestedScrollView(
      // physics: NeverScrollableScrollPhysics(),
     
      headerSliverBuilder:(context, innerChildOverscrollIndicator)=> [
           SliverAppBar(
            automaticallyImplyLeading: false,
            collapsedHeight: 500,
            expandedHeight: 500,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
              child: Business_Top_List(index: widget.index),
            ),
          )
      ],
      body: Container(
        
         child: ListView.builder(
         itemCount: filteredBusinesses.length,
         itemBuilder: (context, index) {
           final businessData = filteredBusinesses[index];
           final name = businessData['Account Name'];
           final email = businessData['Email'];
           final tel = businessData['Tel'];
           final fax = businessData["Fax"];
           final website = businessData["Web"];
           
         
           // Extract business information based on your data structure
           return Padding(
            
             padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
             child:
                 GestureDetector(
                  onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CompanyDetail(data: businessData),
              ),
            );
          },
                   child: Container(
                    
                      decoration: BoxDecoration(
                       
                           color: const Color.fromARGB(255,229,234,232),
                   
                   borderRadius:BorderRadius.circular(20), // Set border width
                   
                     ),
                     // color: const Color.fromARGB(255,229,234,232),
                     //  width: MediaQuery.of(context).size.width * 0.8,
                     //  height: 230,
                     child:  Padding(padding: EdgeInsets.all(16),
                     child: Column(children: [
                       Row(
                         children: [
                          
                           Expanded(child: Text(name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16), softWrap: true,overflow: TextOverflow.ellipsis,textAlign: TextAlign.left)),
                         ],
                       ),
                       // Text(name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),softWrap: true,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,),
                       //  Row(
                         
                         // children: [
                           // SvgPicture.asset('assets/images/phone_icon.svg'),
                           // SizedBox(width: 10,),
                          
                           // Column(children: [
                           //   SvgPicture.asset('assets/images/phone_icon.svg'),
                           //   SizedBox(height: 10,),
                           // //  SvgPicture.asset('assets/images/fax_icon.svg')
                              
                           // ],),
                           // SizedBox(width: 20,),
                           // Column(
                           //   children: [
                            
                           // SvgPicture.asset('assets/images/web_icon.svg'),
                           // SizedBox(height: 10,),
                           //  SvgPicture.asset('assets/images/mail_icon.svg'),
                           //   ]
                    
                           // )
                          
                           
                       //   ],
                       // ),
                       if(tel !="")
                       Row(
                         children: [
                           InkWell( // Wrap the content in an InkWell
                   onTap: () {
                     launch('tel:$tel'); // Launch the phone dialer with the number
                   },
                          child: Row(
                             children: [
                                Container(
                                 // width: 20,
                                 // height: 20,
                                 decoration: BoxDecoration(
                       
                           color: Color.fromARGB(255, 255, 255, 255),
                   
                   borderRadius:BorderRadius.circular(999), // Set border width
                   
                     ),
                                 child: SvgPicture.asset('assets/images/vector1.svg',width: 10,height: 10,)),
                               SizedBox(width: 10,),
                               Text(tel,softWrap: true,overflow: TextOverflow.ellipsis,),
                             ],
                           ),),
                         ],
                       ),
                       SizedBox(height: 5,),
                      
                        if(website !="")
                       Row(
                       children: [
                        InkWell( // Wrap the content in an InkWell
                           onTap: () {
                             launch(website); // Launch the URL in a web browser
                   },
                         child:Row(
                         children: [
                            Container(
                             // width: 20,
                             // height: 20,
                             decoration: BoxDecoration(
                       
                           color: Color.fromARGB(255, 255, 255, 255),
                   
                   borderRadius:BorderRadius.circular(999), // Set border width
                   
                     ),
                             child: SvgPicture.asset('assets/images/vector.svg',width: 10,height: 10,)),
                           SizedBox(width: 10,),
                           Text(website,softWrap: true,overflow: TextOverflow.ellipsis,),
                         ],
                       )),],),
                        SizedBox(height: 5,),
                        if(fax !="")
                       Row(
                         children: [
                            Container(
                             // width: 10,
                             // height: 10,
                             decoration: BoxDecoration(
                       
                           color: Color.fromARGB(255, 255, 255, 255),
                   
                   borderRadius:BorderRadius.circular(999), // Set border width
                   
                     ),
                             child: SvgPicture.asset('assets/images/vector3.svg',width: 10,height: 10,)),
                           SizedBox(width: 10,),
                           Text(fax,softWrap: true,overflow: TextOverflow.ellipsis,),
                         ],
                       ),
                        SizedBox(height: 5,),
                         if(email !="")
                       Row(
                     children: [
                       InkWell( // Wrap the content in an InkWell
                   onTap: () {
                     launch('mailto:$email'); // Launch email app with recipient
                   },
                   child: Row(
                         children: [
                            Container(
                             // width: 20,
                             // height: 20,
                             decoration: BoxDecoration(
                       
                           color: Color.fromARGB(255, 255, 255, 255),
                   
                   borderRadius:BorderRadius.circular(999), // Set border width
                   
                     ),
                             child: SvgPicture.asset('assets/images/vector2.svg',width: 10,height: 10,)),
                            SizedBox(width: 10,),
                           Text(email,softWrap: true,overflow: TextOverflow.ellipsis,),
                         ],
                       ),)]),
                       SizedBox(height: 20,),
                   
                   
                       
                        Row(
                          children: [
                           SizedBox(width: MediaQuery.of(context).size.width*0.68,),
                            Container(
                              decoration: BoxDecoration(
                           
                           color: Color.fromARGB(255, 255, 255, 255),
                   
                   borderRadius:BorderRadius.circular(999), // Set border width
                   
                     ),
                              child: IconButton(
                               icon: const Icon(Icons.share),
                               onPressed: () async {
                                 // Replace with your actual sharing logic
                                 final text = 'Company Name: $name\n Phone: $tel\n Email: $email\n Website: $website\n Fax: $fax\n';
                                 await Share.share(text);
                               },
                                        ),
                            ),
                          ],
                        ),
                       // const Column(
                       //   children: [
                           
                       //   ],
                       // )
                     ],))
                      
                   ),
                 ),
              
           
           );
           //  ListView(
             // children: [
               // Text(name);
             //   Text(tel),
             //   Text(fax),
             //   Text(website),
             //  Text(email),
             // ]
               
             // onTap: () {
               // Navigate to CompanyDetailsScreen
               // Navigator.push(
               //   context,
               //   MaterialPageRoute(
               //     builder: (context) => Detail(businessData: businessData),
               //   ),
               // );
             // },
           // );
         },
           ),
       ),
    );
}
}











































