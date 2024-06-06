import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/AlmanacListing.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/Almanac_Category.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/expandedPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Fintech_Options extends StatelessWidget {
  final List<Map<String,dynamic>> data = [
  {
  "title":"telebirr",
"content": ""
  },
  {
"title":"mpesa",
 "content":""
  },
    {"title": "Addis Pay Financial Technology S.C", "content": "+251-116-684-243"},
   {"title": "Arifpay", "content": "+251-989-967-575"}, 

    {"title": "Belcash", "content": "+251-116-174-455"},
    {"title": "Chapa", "content": "+251-960-724-272"},

    {"title": "EBirr", "content": "+251-6836"},
    {"title": "Kifiya", "content": "+251-116-671-579"},
    {"title": "Premier Switch Solution S.C", "content": "+251-115-570-581"},
    {"title": "Santim Pay Financial Technology S.C", "content": "+251-115-576-369"},
    {"title": "Yagout Pay Financial Technology S.C", "content": "+251-116-722-572"},

 {"title": "Yaya Payment Instrument Issuer S.C", "content": "+251-118-494-836"},
 {
    "title":"Adaday Microfinance Institution S.C.",
    "content":"+251-342405095/342405069/914749064",
  },
   {
    "title":"Afar Microfinance Institution S.C",
    "content":"+251-336660868/919982378",
  },
  {
    "title":"Africa Village Financial Services S.C.",
    "content":"+251-116463569/ 251-911370880/ 251-930362553",
  },

 {
    "title":"Aggar Microfinance S.C.",
    "content":"+251-115577133/ 116183382; +251-911254761",
  },
  {
    "title":"Amhara Credit and Saving Institution S. Co.",
    "content":"058-2201652 0918340256/0918784701/0912901739",
  },
  {
    "title":"Benishangul-Gumuz Microfinancing S.C.",
    "content":" +251-577750666/ 251-577752042/ 251-913939415",
  },
  {
   "title":"Buusaa Gonofaa MicroFinancing S.C.",
   "content": "+251-114-162-621/ 251-114-162-210/ 251-911-223-679",
  },
 
   {
    "title":"Debo Microfinance Institution S.C.",
  
    "content":"+251-116721518/19; +251-917823995"
    ,
  },
   {
    "title":"Dedebit  Credit and Saving Institution S.C."
    ,
    "content":
 "+251-344409306/251-988269371"
    ,
  },
   {
    "title":"Dire Microfinance Institution S.C."
    ,
    "content":" +251-251129702/1127072/1119246/47 +251-915754951",
  },
  
   {
    "title":"Dynamic Microfinance S.C.",
    "content":"+251-115156817/115577285/911246806",
  },
  {
    "title":"ESHET Microfinance Institution S.C.",
    "content":"+251-113206451/52; +251-902481762",
  },
  {
    "title":"Gambella Microfinancing S.C.",
    "content":"+251-475511271/910460091",
  },
   {
    "title":"Gasha Micro Financing S.C",
    "content":"0118952389/90/91; +251-911240437",
  },
   {
    "title":"GOGIBA Microfinance Institution S.C.",
    "content":" +251-911951484",
  },
   {
    "title":"Grand Microfinance Institution S.C",
    "content":" +251-911133287/948852760/114705102",
  },
  {
    "title":"Harbu Microfinancing Institution S.C.",
    "content":" +251-116185510/911306545",
  },
  {
    "title":"KAAFI Microfinance Institution S.C.",
    "content":" +251-946877364/911832091",
  },
   {
    "title":"Kendil Microfinance Institution S.C.",
    "content":" +251-461105952/3831/5663; +251-913252247",
  },
   {
    "title":"Kershi Microfinance Institution S.C.",
    "content":" +251-118721106/2; +251-966566609",
  },
    {
    "title":"Lefayeda Credit and Saving S.C.",
    "content":" +251-115581546/914 317010",
  },
 {
    "title":"Lideta Microfinance Institution S.C.",
    "content":" +251-919032777/914766154",
  },
  {
    "title":"Liyu Microfinance Institution S.C",
    "content":" +251-115576638/116622780/911625576",
  },
  {
    "title":"Meklit Microfinance Institution S.C.",
    "content":"+251-113484152/ 251-113482183/ 251-912611723",
  },
   {
    "title":"ONE Microfinance Institution S.C.",
    "content":"+251-116595363/116636947/911319055",
  },
   {
    "title":"Peace Micro Financing S.C.",
    "content":"+251-116521541/ 251-116616986/ 251-911219506",
  },
  {
    "title":"Rays Microfinance Institution S.C.",
    "content":"+251-114701834/913386180",
  },
  {
    "title":"SAHAL Microfinance Institution S.C",
    "content":"+251-915768505",
  },
  {
    "title":"Sheger Microfinance Institution S.C.",
    "content":"+251-113698998/113698894/113699612/911245736",
  },
   {
    "title":"Tesfa Microfinance Institution S.C.",
    "content":"+251-911261007/913157521",
  },
  {
    "title":"Vision Fund Microfinance Institution S.C.",
    "content":"+251-116463569/251-911370880/251-930362553",
  },
   {
    "title":"Wasasa Microfinance Institution S.C.",
    "content":"+251-911673822/ 251-113384133",
  },
   {
    "title":"Yemsirach Microfinance Institution S.C.",
    "content":"+251-118312404/911318625",
  },

   
 ];

  final FinTech = [
    "assets/images/almanac_lists/fintech_logos/fintech.png",
    "assets/images/almanac_lists/fintech_logos/fintech2.png",
    "assets/images/almanac_lists/telecom_logos/mpesa.png",
      "assets/images/almanac_lists/telecom_logos/telebirr.png",
    
 ];
final Name = [
   "Ethswitch",
    "Kacha Digital Financial Services SC",
    "mpesa/Safaricom",
   "telebirr/Ethio telecom ",
  

   
 ];
  // const Fintech_Options({super.key});
   final List<Map<String, String>> detail = [
    { "sector":"Fintech",
     "name": "Ethswitch",
     "logo": "assets/images/almanac_lists/fintech_logos/fintech2.png",
     "adv_image":"assets/images/almanac_lists/adv/18.jpg",
     "adv_video":"assets/video/Ethswitch.mp4",
     "profile": "Ethswitch, established in 2011, is a share company fully owned by all banks in Ethiopia. It is established mainly to provide simple, affordable, secured, and efficient e-payment infrastructure services to retail payment service providers, and through them, to end users in Ethiopia; by deploying state-of-the-art technology along with highly skilled and motivated professionals. The underling mandate of Ethswitch is contributing to the modernization of the national payments system and enhancement of financial inclusion in the country. Since 2016, it has enabled interoperability of ATMs operated by all banks. Currently, it is also rolling out projects to achieve interoperability of POS terminals and other digital payment platforms operated by all financial service providers.",
     "tel": " +251-115571204",
     "email": "info@ethswitch.com",
     "website":"www.ethswitch.com",
     "fax":" +251-115571115"},
    {
        "sector":"Fintech",
     "name": "Kacha Digital Financial Services SC",
     "logo": "assets/images/almanac_lists/fintech_logos/fintech.png",
     "adv_image":"assets/images/almanac_lists/adv/19.jpg",
     "adv_video":"assets/video/Kacha.mp4",
     "profile": "Kacha Digital Financial Service S.C. is a premier digital platform that provides seamless financial services in Ethiopia. We are the first private payment instrument issuer licensed by the National Bank of Ethiopia, registered as NPS/PII/002/2022. Our goal is to promote financial inclusion and contribute to Ethiopia's national digitalization ambitions. Our digital platform offers mobile money, bill payments, remittances, and merchant payments, making financial services accessible to all Ethiopians, especially those who are underserved and unserved. We are committed to empowering our customers by providing them with convenient, affordable, and secure digital financial services that meet their everyday needs. At Kacha, we are passionate about driving positive change and creating value for our customers, employees, and society as a whole. We are proud to be part of Ethiopia's digital transformation and are committed to playing our role in achieving the country's economic and social development goals. Thank you for choosing Kacha Digital Financial Service S.C. as your financial services provider.",
     "tel": " 677",
     "email": "info@kachadfs.com",
     "website":"www.kacha.et",
     "fax":""
  },
 

     {
 
      "sector":"FinTech",
     "name": "mpesa",
     "logo": "assets/images/almanac_lists/telecom_logos/mpesa.png",
     "adv_image":"assets/images/almanac_lists/telecom_logos/mpesa.png",
     "adv_video":"",
     "profile": "M-Pesa Ethiopia is a mobile financial service launched in August 2023 by Safaricom Ethiopia, a subsidiary of the Kenyan telecommunications giant Safaricom. It aims to replicate the success of M-Pesa in Kenya by offering Ethiopians a convenient and secure way to manage their money through their mobile phones.",
     "tel": "733",
     "email": "",
     "website":"https://m-pesa.safaricom.et/",
     "fax":""
   
  },
     {
 
      "sector":"FinTech",
     "name": "telebirr",
     "logo": "assets/images/almanac_lists/telecom_logos/telebirr.png",
     "adv_image":"assets/images/almanac_lists/telecom_logos/telebirr.png",
     "adv_video":"",
     "profile": "Telebirr is a mobile payment service launched in Ethiopia in 2021 by Ethio telecom, the state-owned telecommunication provider. It allows users to conduct cashless transactions using their mobile phones.",
          "tel": "127",
     "email": "",
     "website":"https://www.ethiotelecom.et/telebirr/",
     "fax":""
   
  },
  
  ]; 
  
  @override
  Widget build(BuildContext context) {
    
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       

      appBar: AppBar(
        backgroundColor:Colors.white,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed:()=>{
          Navigator.push(
              context,
               TransparentRoute(
               
                page:  Almanac(),
              ),
            ),
            }
          ),
      
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0), // Set border radius
    ),
       
        title:const Text(
          'Fintech',
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
           Padding(
             padding:  EdgeInsets.only(left: 20.0,right: 20,top: 4),
             child: Column(
               children: [
                 SizedBox(
                  height: 600,
                   child: ListView.builder(
                     itemCount: FinTech.length,
                     itemBuilder: (context, index) {
                       final String icon = FinTech[index];
                       final String name = Name[index]; // Assuming Name has data for each bank
                   
                       return Column(
                         children: [
                           Container(
                             child: GestureDetector(
                               onTap: () {
                                if(index<4){
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => Company(detail: detail[index])),
                                 );
                                }
                                
                               },
                               child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                 child: Row(
                                   children: [
                   Container(
                     width: 80.0,
                     height: 80.0,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(
                         color: Color.fromARGB(255, 229, 234, 232),
                         width: 1.0,
                       ),
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     child: Image.asset(icon),
                   ),
                   SizedBox(width: 20.0),
                   Expanded(
                     child: Text(
                       name,
                       style: TextStyle(fontWeight: FontWeight.bold),
                       textAlign: TextAlign.left,
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                     ),
                   ),
                                   ],
                                 ),
                               ),
                             ),
                           
                           
                             
                           ),
                         
                         ],
                       );
                     },
                   ),
                 ),
                //  const Padding(
                //    padding: EdgeInsets.only(left: 20.0,right: 20,),
                //    child: Row(
                //      children: [
                //        Text("Usefull Addresses",style: TextStyle(fontSize: 16.0),textAlign: TextAlign.center,)
                //      ],
                //    ),
                //  ),
                   // SizedBox(height: 20,),
            // Expanded(child: ExpandedPanel(data: data))
               ],
             ),
           ),  
    
          bottomNavigationBar:const CustomeButtomNavBar(index: 3,),


    );
    return scaffold;
  }

}