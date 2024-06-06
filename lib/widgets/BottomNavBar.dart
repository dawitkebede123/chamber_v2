import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Discovery.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomNav extends StatefulWidget {
  final int index;
 //accept a  list to display in a grid
 const BottomNav({super.key, required this.index});
  // const BottomNav({super.key});
 
  @override
  State<BottomNav> createState() => _BottomNavState();
}


class _BottomNavState extends State<BottomNav> {
  
  //  int currentIndex = ;

//    onTap(int index){
//   setState(() {
//     currentIndex = index;
//   });
//   print(currentIndex);
//  } 
  @override
  Widget build(BuildContext context) {
    return 
    //  Scaffold(
        //  bottomNavigationBar:
          BottomNavigationBar(
     items:  <BottomNavigationBarItem>[
       BottomNavigationBarItem(
      //  backgroundColor: Color.fromARGB(255, 0, 114, 63),
        //you have to use svg
         icon: 
        //  Container(
            TextButton(
            onPressed:  () { 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            // [on,off]
                   //  in every icon change the color have to be change
           //give unique number for each icons
                   //  if()
             child:SvgPicture.asset('assets/images/home.svg',color:widget.index==0? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),   
            
           ),
        //  ),
         
         label: 'Home',
       backgroundColor: Color.fromARGB(255, 0, 114, 63),
         
       ),
      //  BottomNavigationBarItem(
      // //  backgroundColor: Color.fromARGB(255, 0, 114, 63),
      //   //you have to use svg
      //    icon: 
      //   //  Container(
      //       TextButton(
      //       onPressed:  () { 
      //         // onTap(1);
      //             Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => Discovery()),
      //         );
      //       },
      //       // [on,off]
      //              //  in every icon change the color have to be change
      //      //give unique number for each icons
      //              //  if()
      //        child:SvgPicture.asset('assets/images/discovery.svg',color:widget.index==1? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),   
            
      //      ),
      //   //  ),
         
      //    label: 'Discovery',
      //  backgroundColor: Color.fromARGB(255, 0, 114, 63),
         
      //  ),
       BottomNavigationBarItem(
          // icon: Image(image: AssetImage('assets/images/business_small.png')),
           icon: TextButton(
          onPressed:  () { 
            // onTap(2);
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Business()),
            );
          },
         
         
            child:SvgPicture.asset('assets/images/business_small.svg',color:widget.index==2?Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),   
         ),
           
         label: 'Business',
      backgroundColor: Color.fromARGB(255, 0, 114, 63),
         
       ),
        BottomNavigationBarItem(
        //  icon: Image(image: AssetImage('assets/images/almanac_small.png')),
         icon: TextButton(
          onPressed:  () { 
            // onTap(3);
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Almanac()),
            );
          },
         //ontab the icon color change programmatically
         //change the index to current index
           child:SvgPicture.asset('assets/images/almanac_small.svg',color:widget.index==3?Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),     
           
                  ),
         label: 'Almanac',
      backgroundColor: Color.fromARGB(255, 0, 114, 63),
     
       ),
      //   BottomNavigationBarItem(
     
      //   //  icon: Image(image: AssetImage('assets/images/favorite.png')),
      //    icon: TextButton(
      //     onPressed:  () { 
      //       // onTap(4);
      //           Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => Favorite()),
      //       );
      //     },
         
          
      //      // ignore: deprecated_member_use
      //     child:SvgPicture.asset('assets/images/favorite.svg',color:widget.index==4?Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),   
      //    ),
      //    label: 'Favorite',
      //     // backgroundColor: Color(0X00723F),
      //  backgroundColor: Color.fromARGB(255, 0, 114, 63),
       
      //  ),
     ],
     // currentIndex: _selectedIndex,
      // selectedItemColor: Colors.amber[800],
     // 
           );
    // ); 
     }
}