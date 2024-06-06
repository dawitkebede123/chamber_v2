import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
   List <Map<String,dynamic>> Companies = [
    {
     "company_Name":"Awash",
     "Image":"assets/images/awash_logo.svg",
     "date":"Today",
     "time":"11:45"
    }
  ];

   final List<Map<String, String>> detail = [{}];
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      
      
       





      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 255, 255, 255),
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.push(
              context,
              TransparentRoute(
               
                page:  Home(),
              ),
            ),
            }
          ),
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title:const Text(
          'Notification',
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

         ListView.builder(
          itemCount: Companies.length,
          itemBuilder: (context, index) {
            return Container(
              //  width: 100.0,
  height: 100.0,
  margin: EdgeInsets.all(20),
  decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(20),
      border: const Border(
        left:BorderSide(
          color: Color.fromARGB(255, 0, 114, 63), // Example color, adjust as needed
           width: 3.0,
        ),
      )
    // border: Border.o(
    //   color: Colors.red,
    //   width: 3.0,
    // ),
  ),
              child: Row(
                children: [
                  // Expanded(
                   Column( children: [
                   Container(
                      // width: 20,
                      // height: 20,
                      padding: const EdgeInsets.all(8.0),
                      child:Column( children: [
                        Container(
                          width: 40,
                          height: 40,
                            decoration: BoxDecoration(
                      color: const Color.fromARGB(255,229,234,232),
                        
                        borderRadius: BorderRadius.circular(50),
                      //   border: Border.all(color: Colors.red, width: 2.0),
                            ),

                       
                            
                      child:
                      Center(
                        
                      child:  Text((++index).toString()))
                            )

                      ]
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.only(left:8.0),
                   child: Text(Companies[--index]['date']),
                   ),
                    Container(
                     padding: const EdgeInsets.only(left: 8.0),
                   child: Text(Companies[index]['time']),
                    
                   )
                    ]),
                  // ),
                  // const SizedBox(width: 10.0), // Add spacing between containers
                     const Text("New Businesses Nearby"),
                    //  const SizedBox(width: 10.0,),
                     TextButton(
                          onPressed: () {
                              //  Navigator.push(
                              //  context,
                              //   MaterialPageRoute(builder: (context) => Company(detail:detail[index],)),
                              //        );
                          },
                          child: Text('Explore Now'),
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.black),
                            backgroundColor: const Color.fromARGB(255,229,234,232), // Optional background color
                          ),
                        ),
                                       // Expanded(
                  //   child: Container(
                  //     padding: const EdgeInsets.all(2.0),
                  //     child: SvgPicture.asset('assets/images/awash_logo.svg'), // Replace with image widget if available
                  //   ),
                  // ),
                  // const SizedBox(width: 8.0), // Add spacing between containers
                  // Expanded(
                  //   child: Container(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: SvgPicture.asset('assets/images/trash.svg'), // Replace with additional data widget
                  //   ),
                  // ),
                ],
              ),
            );
        
          },

        ),
        
      
        
 

      
    
      
 bottomNavigationBar:const CustomeButtomNavBar(index: -1,),
    );
    return scaffold;
  }
}