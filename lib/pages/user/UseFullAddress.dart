import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/FAQ.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/expandedPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsefullAddress extends StatelessWidget {
  const UsefullAddress ({super.key});

  @override
  Widget build(BuildContext context) {
     final List<Map<String,dynamic>> data = [
       {
  "title":"Ahadu Bank S.C.",
"content": "+251-115261717"
  },
  {
"title":"Gadaa Bank S.C.",
 "content":"+251-911225229"
  },
{
"title":"Omo Bank S.C.",
"content": "+251-462202053"
},
{
"title":"Rammis Bank S.C.",
 "content": "+251-115621202"
},
{
"title":"Shabelle Bank S.C.",
"content": "+251-117756976/77"
},
{
"title": "Tsedey Bank S.C.",
 "content":"+251-115584133"

},
{
        "title": "Addis Capital Goods Finance Business S.C.",
        "content": "+251-111-262-445 / +251-111-262-411"
    },
    {
        "title": "Debub Capital Goods Finance Business S.C.",
        "content": "+251-462-125-191; +251-936-475-076"
    },
    {
        "title": "Ethio-Lease Ethiopian Capital Goods Finance Business S.C.",
        "content": "+251-116-393-397/ +251-116-393-395/ +251-930- 681-819"
    },
    {
        "title": "Kaza Capital Goods Finance Business S.C.",
        "content": "+251 -342-400-087/+251-344-400-085/ +251-930-469-095"
    },
    {
        "title": "Oromia Capital Goods Finance Business S.C.",
        "content": "+251-115-571-307/251-115-571-337/251-911-019-828"
    },
    {
        "title": "Waliya Capital Goods Finance Business S.C.",
        "content": "+251-582-206-780/251-582-206-728/251-930-111-703"
    },
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
   
 ];

     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       



      
      appBar: AppBar(
        backgroundColor:Colors.white,
        
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
          'Usefull Addresses',
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
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: ExpandedPanel(data: data),
        )
        
         
         
          
    
      
     );
     
    return scaffold;
  // );
  }
 
  // }
  
}