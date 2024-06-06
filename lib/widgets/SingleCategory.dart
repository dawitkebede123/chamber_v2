// import 'package:chamber_of_commerce/pages/user/Home.dart';
// import 'package:chamber_of_commerce/widgets/GridScreen.dart';
// // import 'package:chamber_of_commerce/widgets/GridScreenCategory.dart';
// import 'package:chamber_of_commerce/widgets/GridSingle.dart';
// import 'package:flutter/material.dart';

// class SingleCategory extends StatelessWidget {
//   const SingleCategory({super.key});

//   @override
//   Widget build(BuildContext context) {
//      final List<String> _items = const [
//     "Card 1",
//     "Card 2",
//     "Card 3",
//     "Card 4",
//     "Card 5",
//     "Card 6",
   
   

//   ];
//      var scaffold = Scaffold(
//       //  drawer:const BackButton(
//       //   //  backgroundColor: Colors.white,
//       //  ),
      
       





//       appBar: AppBar(
//         backgroundColor:Color.fromARGB(255, 255, 241, 209),
//          leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed:()=>{
//            Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Home()),
//             ),
//             }
//           ),
//         // padding: const EdgeInsets.all(16.0), // Add padding on all sides
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(30.0), // Set border radius
//     ),
       
//         title:const Text(
//           'Bank',
//           style: TextStyle(
//            color: Colors.black,
//            fontWeight: FontWeight.bold,
//            fontSize: 18,
//           ),
//         ),
//        //should be replace by botton
//         actions: [
//           IconButton(
//         icon: const Icon(Icons.notifications),
//         onPressed: () {
//           // Handle notification tap
//         },
//       ),
//     ],
//         elevation: 0.0,//remove shadow
//         centerTitle: true,
//       ),
      
//       body:GridScreen(items: _items,),
//       //  ListView(
//         // children: [
//             //  GridScreen(items: _items),
//             //  GridSingle()
//         // ],
//       // ),
        


      
//       // ListView(
//       //   children: [

//       //     ////slider for almanac
//       //     Container(
//       //       ///place holder for slider 
//       //       child: const Image(
//       //       image:AssetImage('assets/images/SingleCategory_Adv.png')
//       //               ),
//       //     ),
          
//       //    GridView.count(
//       //   crossAxisCount: 3, // Three columns
//       //   childAspectRatio: 1.5, // Aspect ratio for cards (adjust as needed)
//       //   children: _items.map((String item) => _buildCard(item)).toList(),
//       // ),
       
     
//       //   ],
         
         
//       // ),
 

//       // addis chamber contact bar
      

//       bottomNavigationBar: BottomNavigationBar(
//      items: const <BottomNavigationBarItem>[
//        BottomNavigationBarItem(
//        backgroundColor: Color.fromARGB(255, 0, 114, 63),
//         //you have to use svg
//          icon: Image(image: AssetImage('assets/images/home.png'),   
//          ),
//          label: 'Home',
//        ),
//        BottomNavigationBarItem(
//          icon: Image(image: AssetImage('assets/images/discovery.png')),
//          label: 'Discovery',
//        backgroundColor: Color.fromARGB(255, 10, 131, 53),
     
//        ),
//        BottomNavigationBarItem(
//           icon: Image(image: AssetImage('assets/images/SingleCategory_small.png')),
           
//          label: 'SingleCategory',
//       backgroundColor: Color.fromARGB(255, 10, 131, 53),
         
//        ),
//         BottomNavigationBarItem(
//          icon: Image(image: AssetImage('assets/images/almanac_small.png')),
//          label: 'Almanac',
//       backgroundColor: Color.fromARGB(255, 10, 131, 53),
     
//        ),
//         BottomNavigationBarItem(
     
//          icon: Image(image: AssetImage('assets/images/favorite.png')),
//          label: 'Favorite',
//           // backgroundColor: Color(0X00723F),
//        backgroundColor: Color.fromARGB(255, 10, 131, 53),
       
//        ),
//      ],
//      // currentIndex: _selectedIndex,
//       selectedItemColor: Colors.amber[800],
//      // 
//     //  onTap: _onItemTapped,
//            )


//     );
//     return scaffold;
//   }
//  Widget _buildCard(String item) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Text(item),
//         ),
//       ),
//     );
//   }
  
// }