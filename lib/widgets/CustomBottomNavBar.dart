import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Discovery.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomeButtomNavBar extends StatefulWidget {
  final int index;
  const CustomeButtomNavBar({super.key, required this.index});

  @override
  State<CustomeButtomNavBar> createState() => _CustomeButtomNavBarState();
}

class _CustomeButtomNavBarState extends State<CustomeButtomNavBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
            width:MediaQuery.of(context).size.width,
            height: 60,
            color: Color.fromARGB(255, 0, 114, 63),
      child:  Padding(padding: EdgeInsets.only(top: 8,bottom: 8),
      child:  Row(
        children: [
          GestureDetector(
            onTap: (){
                 Navigator.push(
                context,
                 TransparentRoute(
               
                page:  Home(),
              ),
              );
            },
             child:Container(
             width:MediaQuery.of(context).size.width*0.333,

        child:Column(children: [
         SvgPicture.asset('assets/images/home.svg',color:widget.index==0? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),
          Text("Home", style:  TextStyle(color:widget.index==0? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255) ),),
        ]

        )
          
          ),
          ),
         
          //  GestureDetector(
          //   onTap: (){
          //       Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Discovery()),
          //     );
          //   },
          //   child:  Container(
          //       width:MediaQuery.of(context).size.width*0.25,
          //   child:Column(
          //     children: [
          //   SvgPicture.asset('assets/images/discovery.svg',color:widget.index==1? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),
          //       Text("Discovery",style:  TextStyle(color:widget.index==1? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255) ),)
          //     ],
          //   )
          // ),
          // ),
        
           GestureDetector(
            onTap: (){
                Navigator.push(
                context,
                TransparentRoute(
               
                page:  Business(),
              ),
              );
            },
            child:  Container(
            width:MediaQuery.of(context).size.width*0.33,
        child:Column(
              children: [
         SvgPicture.asset('assets/images/business_small.svg',color:widget.index==2? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),
                Text("Business",style:  TextStyle(color:widget.index==2? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255) ),)
              ],
            )
          ),
          ),
         
           GestureDetector(
            onTap: (){
                Navigator.push(
                context,
                 TransparentRoute(
               
                page:  Almanac(),
              ),
              );
            },
            child:  Container(
            width:MediaQuery.of(context).size.width*0.33,
          child: Column(
              children: [
          SvgPicture.asset('assets/images/almanac_small.svg',height: 23,color:widget.index==3? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),
                Text("Almanac",style: TextStyle(color:widget.index==3? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255) ),)
              ],
            )
           ),
          ),
         
        //     GestureDetector(
        //     onTap: (){
        //         Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => Favorite()),
        //       );
        //     },
        //     child:  Container(
        //     width:MediaQuery.of(context).size.width*0.2,
        //  child:Column(
        //       children: [
        //    SvgPicture.asset('assets/images/favorite.svg',color:widget.index==4? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),  
        //         Text("Favorite",style:  TextStyle(color:widget.index==4? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255) ),)
        //       ],
        //     )
        //   ),
        //   )
        
         

        //  Container(
      //       TextButton(
      //       onPressed:  () { 
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => Home()),
      //         );
      //       },
      //       // [on,off]
      //              //  in every icon change the color have to be change
      //      //give unique number for each icons
      //              //  if()
      //        child:SvgPicture.asset('assets/images/home.svg',color:widget.index==0? Color.fromARGB(255,253,184,19):Color.fromARGB(255, 255, 255, 255)),   
            
      //      ),
      //   //  ),
         
      //    label: 'Home',
      //  backgroundColor: Color.fromARGB(255, 0, 114, 63),
        
      ],),
      )
    );
  }

  
}

class TransparentRoute extends PageRouteBuilder {
  final Widget page;

  TransparentRoute({required this.page})
      : super(
          opaque: false, // Set to false for transparency
          pageBuilder: (context, _, __) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
        );
}