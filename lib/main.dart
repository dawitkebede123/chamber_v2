// ignore_for_file: avoid_print

// import 'package:chamber_of_commerce/add.dart';
// import 'package:chamber_of_commerce/detail.dart';
import 'package:chamber_of_commerce/firebase_options.dart';
import 'package:chamber_of_commerce/navigation.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Business_listing.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/SearchMoreIcon.dart';
import 'package:chamber_of_commerce/widgets/TopNav.dart';
import 'package:chamber_of_commerce/widgets/expandedPanel.dart';
import 'package:chamber_of_commerce/widgets/filterResult.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

// Assuming you have initialized Firebase in your main function
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( MaterialApp(
    
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Poppins'),
    // home: MyHomePage(),
    // home:Business()
    // home:Almanac()
    // home:GridScreen()
    // home: BottomNav()
    // home:const TopNav(index: 0),
    //  home:Business_listing(index: 11,),
      home:Home(),
      // home:MyApp(),
      // home: ExpandedPanel(),
     routes: routes,
    // home: SearchFieldMoreIcon(),
    // home:MyHomePage()

  ));
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final _searchController = TextEditingController();
//   String _searchTerm = '';
//   Stream<DatabaseEvent>? _userStream;

//   @override
//   void initState() {
//     super.initState();
//     _userStream = FirebaseDatabase.instance.ref('business').onValue;
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   void _searchCompany(String searchTerm) {
//     setState(() {
//       _searchTerm = searchTerm.toLowerCase();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer:const  Drawer(
//         // backgroundColor: Colors.white,
//       ),
//       appBar: AppBar(
//         title: const Text('Addis Chamber'),
//         centerTitle: false,
//          actions: [
//           IconButton(
//             icon: const Icon(Icons.add),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const AddBusinessPage()),
//               );
//             },
//           ), 
//         ],
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(56.0),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: TextField(
//               controller: _searchController,
              
//               decoration: InputDecoration(
//                 hintText: 'Search by campany name...',
               
//                 prefixIcon: const Icon(Icons.search),
//                 suffixIcon: IconButton(
//                   icon: const Icon(Icons.clear),
//                   onPressed: () => _searchController.clear(),
//                 ),
//               ),
//               onChanged: _searchCompany,
//             ),
//           ),
//         ),
//       ),
//       body: StreamBuilder<DatabaseEvent>(
//         stream: _userStream,
//         builder: (context, snapshot) {
//            return Container(
//       // Set desired height or adjust with constraints
//       height: 200.0, // Adjust height as needed
//       // color: Color.fromARGB(255, 142, 139, 139), // Optional background color
//       child: _buildContent(snapshot), // Call a separate function
//     );
//         },


//       ),
//     );
//   }

//   Widget _buildContent(AsyncSnapshot<DatabaseEvent> snapshot) {
//   if (snapshot.hasError) {
//     return Center(
//       child: Text('Error: ${snapshot.error}'),
//     );
//   }

//   if (snapshot.connectionState == ConnectionState.waiting) {
//     return const Center(child: CircularProgressIndicator());
//   }

//   final data = snapshot.data!.snapshot.value as List<dynamic>;

//   if (data.isEmpty) {
//     return const Center(child: Text('No businesses found'));
//   }

//   final filteredBusinesses = data.expand((element) {
//     // ... filtering logic using entry.value as Map<String, dynamic>
//     final companyName = element['Company Name']?.toString().toLowerCase() ?? '';
//     return companyName.startsWith(_searchTerm) ? [element] : [];
//   }).toList();

//   return ListView.builder(
//     itemCount: filteredBusinesses.length,
//     itemBuilder: (context, index) {
//       final businessData = filteredBusinesses[index];
//       final name = businessData['Company Name'];
//       final email = businessData['E-mail'];
//       // Extract business information based on your data structure
//       return ListTile(
//         title: Text(name),
//         subtitle: Text(email),
//         onTap: () {
//           // Navigate to CompanyDetailsScreen
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Detail(businessData: businessData),
//             ),
//           );
//         },
//       );
//     },
//   );
// }

// }
