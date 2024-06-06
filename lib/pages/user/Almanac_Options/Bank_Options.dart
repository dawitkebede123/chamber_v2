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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BankOptions extends StatelessWidget {
 

  final Banks = [
    "assets/images/almanac_lists/bank_logos/2.png",
     "assets/images/almanac_lists/bank_logos/13.png",
     "assets/images/almanac_lists/bank_logos/1.png",
     "assets/images/almanac_lists/bank_logos/3.png",

     "assets/images/almanac_lists/bank_logos/4.png",
     "assets/images/almanac_lists/bank_logos/5.png",
     "assets/images/almanac_lists/bank_logos/6.png",
     "assets/images/almanac_lists/bank_logos/7.png",
     "assets/images/almanac_lists/bank_logos/8.png",
     "assets/images/almanac_lists/bank_logos/11.png",
     "assets/images/almanac_lists/bank_logos/9.png",

     "assets/images/almanac_lists/bank_logos/14.jpg",
     "assets/images/almanac_lists/bank_logos/10.png",
      "assets/images/almanac_lists/bank_logos/12.png",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
       "",
   "",
   "",
   ""
   
 ];
 final Name = [
  "Addis Int. Bank S.C",
  "Amhara Bank ",
    "Awash Bank S.C.",
    "Berhan Bank S.C.",
    "Commercial Bank of Ethiopia",
    "Dashen Bank S.C.",
     "Development Bank of Ethiopia",
     "Enat Bank S.C.",
     "Hibret Bank S.C.",
     "Oromia Bank S.C.",
     "Siket Bank S.C",
      "Tsedey Bank",
     "Wegagen Bank S.C.", 
     "ZamZam Bank",  
      'Abay Bank S.C.', 
      'Bank of Abyssinia', 
      'Bunna Bank S.C', 
      'Cooperative Bank of Oromia',
       'Global Bank S.C', 
       'Goh Betoch Bank S.C.', 
       'Hijra Bank S.C.', 
       'Lion Int. Bank S.C.', 
       'Nib Int. Bank S.C.',
        'Sidama Bank S.C.',
         'Siinqee Bank S.C.',
          'Tsehay Bank S.C.',
           'Zemen Bank S.C.'

    
 ];

  // const BankOptions({super.key});
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

}

 ];
  /// bank detail info
 final List<Map<String, String>> detail = [
   {
      "sector":"Bank",
     "name": "Addis Int. Bank S.C",
     "logo": "assets/images/almanac_lists/bank_logos/2.png",
     "adv_image":"assets/images/almanac_lists/adv/2.jpg",
     "adv_video":"",
     "profile": "The word 'Addis' as part of the name of Addis International Bank S.C. (AdIB) carries double meaning:new ideas/innovations and the first word of the capital city of Ethiopia where the Bank is born to shoulder its historic mission. The new vision and innovative ideas/approaches that were initially brewed in Addis will however be shared to potential customers all over the country through branches that will eventually be opened in the near future.",
     "tel": " +251-115570520/0526/5549800/9774",
     "email": "info@addisbanksc.com",
     "website":"www.addisbanksc.com",
     "fax":"  +251-115570530"
   },
    {
      "sector":"Bank",
     "name": "Amhara Bank ",
     "logo": "assets/images/almanac_lists/bank_logos/13.jpg",
     "adv_image":"assets/images/almanac_lists/adv/22.jpg",
     "adv_video":"",
     "profile": "The throng of shareholders makes Amhara Bank the most powerful and prominent bank in Ethiopia as it was established by more than 138 thousand subscribers with 4.8 billion ETB paid-up and 6.5 billion ETB subscribed capital. Currently, the bank’s paid-up capital has reached 6.5 billion ETB.",
     "tel": "+251-115-584785",
     "email": "info@amharabank.com.et",
     "website":"www.https://www.amharabank.com.et",
     "fax":""
   },  
   {
      "sector":"Bank",
     "name": "Awash Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/1.png",
     "adv_image":"assets/images/almanac_lists/adv/1.jpg",
     "adv_video":"assets/video/Awash.mp4",
     "profile":"Awash Bank, was established on November 10, 1994 after the downfall of the socialist regime. The Bank was established by 486 founding shareholders with a paid-up capital of Birr 24.2 million and started banking operations on Feb. 13, 1995.",
     "tel": "8980/ +251-115571254",
     "email": "contactcenter@awashbank.com",
     "website":"www.awashbank.com",
     "fax":" +251-115570136"
   },
  
   {
      "sector":"Bank",
     "name": "Berhan Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/3.png",
     "adv_image":"assets/images/almanac_lists/adv/3.jpg",
     "adv_video":"assets/video/Birhan.mp4",
     "profile": "Berhan Bank S.C was formed in accordance with Article 304 of the Commercial Code of Ethiopia with the objective of operating in the banking industry. This objective has been ensured in Article 3 of the Memorandum of Association of the Company. The Bank was registered and licensed by the National Bank of Ethiopia on 27th June, 2009 with an authorized capital of Birr 300 million and subscribed capital of Birr 154.7 Million divided into shares of 1000 Birr par value each.",
     "tel": " +251-116630127/6185732/6629568 ",
     "email": "Info@berhanbanksc.com",
     "website":"www.Berhanbanksc.com",
     "fax":"+251-116623431"
   },
   {
      "sector":"Bank",
     "name": "Commercial Bank of Ethiopia",
     "logo": "assets/images/almanac_lists/bank_logos/4.png",
     "adv_image":"assets/images/almanac_lists/adv/4.jpg",
     "adv_video":"",
     "profile": "The history of Commercial Bank of Ethiopia (CBE) dates back to the establishment of the State Bank of Ethiopia in 1942. CBE was legally established as a share company in 1963. Since then, it has been playing signiﬁcant roles in the development of the country. Currently CBE has more than 40+ million account holders in its more than 1940+ branches and the number of Mobile and Internet Banking users also reached more than 6.6 million and 37k. Active ATM card holders reached more than 8.3 million and 17 million CBE Birr users.",
     "tel": "+251-115515004/00; +251-118346564",
     "email": "cbe-cc@combanketh.com",
     "website":"www.combanketh.com",
     "fax":" +251-115514522"
   },
   {
     "sector":"Bank",
     "name": "Dashen Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/5.png",
     "adv_image":"assets/images/almanac_lists/adv/5.jpg",
     "adv_video":"assets/video/dashen.mp4",
     "profile": "Dashen Bank was founded by eleven visionary shareholders and veteran bankers with initial capital of Birr 14.9 million in September 1995. pon securing license from the National Bank of Ethiopia, Dashen opened its doors for service on the 1st of January 1996 with eleven fully-fledged branches.",
     "tel": "6333/ +251-115183091",
     "email": "info@dashenbanksc.com",
     "website":"www.dashenbanksc.com",
     "fax":" +251-114653037"
   },
   { 
      "sector":"Bank",
     "name": "Development Bank of Ethiopia",
     "logo": "assets/images/almanac_lists/bank_logos/6.png",
     "adv_image":"assets/images/almanac_lists/adv/6.jpg",
     "adv_video":"",
     "profile": "Vision of DBE To be a World Class Development Bank that Help to Achieve Ethiopia’s   Economic Transformation Vision by 2030.The history of Development Bank of Ethiopia goes back to 1909 when the first attempts of its kind known as The Societe Narionale d' Ethiopie Pour le Development de l' agriculture et de Commerce (The Society for the promotion of Agriculture and Trade) was established in the Menelik II era. Since then the Bank has taken different names at different times although its mission and business purpose has not undergone significant changes except for occasional adjustment that were necessitated by change in economic development policies of the country.Mission of DBEThe Development Bank of Ethiopia is a specialized financial institution established to promote the national development agenda through development finance and close technical support to viable projects from the priority areas of the government by mobilizing fund from domestic and foreign sources while ensuring its sustainability.The Bank earnestly believes that these highly valued objectives can best be served through continuous capacity building, customer focus and concern to the wider environment.",
      "tel": " +251-115513120",
     "email": "yohannesay@dbe.com.et",
     "website":"www.dbe.com.et",
     "fax":" +25111-5511606"
   },
   {
      "sector":"Bank",
     "name": "Enat Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/7.png",
     "adv_image":"assets/images/almanac_lists/adv/7.jpg",
     "adv_video":"",
     "profile": "The story of Enat Bank is one of triumph over adversity. Enat Bank was initiated by a diverse group of 11 powerful Ethiopian women, and this tight team of founders has shepherded Enat from an idea to a reality. Enat is a unique success story that should make all Ethiopians proud.The founders of Enat had a vision to create a new bank that was open to everyone, with a special focus on women. Such a focus was necessary to help women access credit, among other products. While the team found many supporters, raising the funds constituted a major hurdle. But the more difficulties the team faced, the more unified and determined they became to make Enat a reality. Each founder contributed their own time and resources.Mission “To remain true to our name, set a trend in the provision of excellent and inclusive banking services mainly by focusing on women economic needs and taking advantage of the state-of-art-technology, innovation and professional workforce with the aim of maximizing the value of our shareholders;”Vision“To become a bank of choice in Ethiopia by 2030, mainly by maximizing women’s economic capabilities;”",
     "tel": " +251-115507074",
     "email": "info@enatbanksc.com",
     "website":"www.enatbanksc.com",
     "fax":" +251-115151338"
   },
   {
      "sector":"Bank",
     "name": "Hibret Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/8.png",
     "adv_image":"assets/images/almanac_lists/adv/8.jpg",
     "adv_video":"assets/video/united.mp4",
     "profile": "The Bank was incorporated as a Share Company on 1 September 1998 GC in accordance with the Commercial Code of Ethiopia 1960 and the Licensing and Supervision of Banking Business Proclamation No. 84/1994.Over the years, Hibret Bank has built a reputation for providing innovative financial solutions to the Ethiopian Banking industry. Furthermore, the Bank’s transformational strategy 2030 is implemented to build a strong financial structure and a mutually benefiting “Eco-system” for customers, strategic partners and stakeholder.",
     "tel": " +251-114655222",
     "email": "info@hibretbank.com",
     "website":"www.hibretbank.com",
     "fax":" +251-114655243"
   },
    {
      "sector":"Bank",
     "name": "Oromia Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/11.png",
     "adv_image":"assets/images/almanac_lists/adv/20.jpg",
     "adv_video":"assets/video/Oromia.mp4",
     "profile": "Oromia Bank S.C. (OB) was established on September 18, 2008 in accordance with the pertinent laws, regulations and the 1960 Commercial Code of Ethiopia, by the Monetary and Banking Proclamation No. 83/1994 and by the Licensing and Supervision of Banking Proclamation No. 592/2008. Through the years, our presence has grown tremendously. After opening the first Bole branch on October 25, 2008 in Addis Ababa – Africa avenue, we continued to expand by establishing over 500 branches across the nation. But growth, as a company, is more than just brick-and-mortar. It’s a reflection of our performance and our ability to earn the public’s trust. Today, we continue to be recognized as a top performing bank with paid up capital to Birr 5.4 Billion.",
     "tel": " +251-115572113/2002",
     "email": "oib@ethionet.et",
     "website":"www.oromiabank.com",
     "fax":" +251-115572110"
   },
   {
      "sector":"Bank",
     "name": "Siket Bank S.C",
     "logo": "assets/images/almanac_lists/bank_logos/9.png",
     "adv_image":"assets/images/almanac_lists/adv/9.jpg",
     "adv_video":"",
     "profile": "MissionProviding quality financial services by equipped employees to economically active poor and medium people to be engaged in gainful activities, mostly focusing on women and youth in urban and rural areas by ensuring its sustainability.Vision To be preferred and model Microfinance in Ethiopia by 2024.",
     "tel": "",
     "email": "",
     "website":"",
     "fax":" +251-111-274927"
   },
   {
      "sector":"Bank",
     "name": "Tsedey Bank ",
     "logo": "assets/images/almanac_lists/bank_logos/14.jpg",
     "adv_image":"assets/images/almanac_lists/adv/23.jpg",
     "adv_video":"assets/video/Tsedey.mp4",
     "profile": "Tsedey Bank Share Company (S.C.) is transformed from Amhara Credit & Savings Institution (ACSI). ACSI was initially established and licensed as a microfinance share company in April 1997.Tsedey Bank S. C. has upgraded itself and joined the banking industry with huge capital and sizable asset position. The Bank was established with a paid-up capital of Birr 7.75 billion, which is well over the regulator’s minimum capital requirement for establishing bank business in Ethiopia. Total capital of the Bank reached Birr 12.8 billion, that includes the paid-up capital, legal and special reserves. Currently, the Bank’s total asset amounted to Birr 56.6 billion.",
     "tel": "0115584538",
     "email": "info@tsedeybank-sc.com",
     "website":"www.https://tsedeybank-sc.com",
     "fax":""
   },  
   {
      "sector":"Bank",
     "name": "Wegagen Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/10.png",
     "adv_image":"assets/images/almanac_lists/adv/10.jpg",
     "adv_video":"",
     "profile": "Wegagen Bank SC was established on the 11th of June 1997 It came to life as a result of the entrepreneurial wit of sixteen 16 founding members who recognized the critical role that financial institutions would play towards creating a sustained economic development and were able to put in an initial paid-in capital of Birr thirty million (Birr 30 Million).Established under the banking proclamation of Licensing and Supervision, Proclamation No. 84/1994, the Bank was registered with the National Bank of Ethiopia on April 30, 1997. The Memorandum and Articles of Association of the Bank were signed on April 15th, 1997 and registered with the Addis Ababa Bureau of Trade, Industry and Tourism on April 15, 1997, Registration Number 1/34/4/89.The Bank, as it started back then, operated through its Head Office located in Gofa Sefer, Addis Ababa. In October 2017, Wegagen moved to its 23 Storey Headquarters Building in front of Addis Ababa Stadium, Ras Mekonnen Street.",
     "tel": "866/ +251-115523800",
     "email": "info@wegagen.com",
     "website":"www.wegagen.com",
     "fax":" +251-115523520/21"
   },
  
    {
      "sector":"Bank",
     "name": "ZamZam Bank ",
     "logo": "assets/images/almanac_lists/bank_logos/12.png",
     "adv_image":"assets/images/almanac_lists/adv/21.jpg",
     "adv_video":"",
     "profile": "ZamZam bank S.C is the first bank to get a license from the National bank of Ethiopia to operate as a full-fledged Interest Free Bank in the country. The bank is established to enhance the financial inclusion with a special focus on the part of society that are alienated from the financial system due to their religious beliefs or other factors. At the time of its formation, ZamZam Bank managed to mobilize a subscribed capital of Birr 1.683 billion and a paid up capital of Birr 872 million from 11,200 shareholders.",
     "tel": "+251-115582308/967",
     "email": "",
     "website":"http://www.zamzambank.com",
     "fax":""
   },
    
 
  //   {
  //     "sector":"Bank",
  //    "name": "Tsedey Bank ",
  //    "logo": "",
  //    "adv_image":"",
  //    "adv_video":"assets/video/Tsedey.mp4",
  //    "profile": "Tsedey Bank Share Company (S.C.) is transformed from Amhara Credit & Savings Institution (ACSI). ACSI was initially established and licensed as a microfinance share company in April 1997.Tsedey Bank S. C. has upgraded itself and joined the banking industry with huge capital and sizable asset position. The Bank was established with a paid-up capital of Birr 7.75 billion, which is well over the regulator’s minimum capital requirement for establishing bank business in Ethiopia. Total capital of the Bank reached Birr 12.8 billion, that includes the paid-up capital, legal and special reserves. Currently, the Bank’s total asset amounted to Birr 56.6 billion.",
  //    "tel": "0115584538",
  //    "email": "info@tsedeybank-sc.com",
  //    "website":"www.https://tsedeybank-sc.com",
  //    "fax":""
  //  },  
  //   {
  //     "sector":"Bank",
  //    "name": "Tsedey Bank ",
  //    "logo": "",
  //    "adv_image":"",
  //    "adv_video":"assets/video/Tsedey.mp4",
  //    "profile": "Tsedey Bank Share Company (S.C.) is transformed from Amhara Credit & Savings Institution (ACSI). ACSI was initially established and licensed as a microfinance share company in April 1997.Tsedey Bank S. C. has upgraded itself and joined the banking industry with huge capital and sizable asset position. The Bank was established with a paid-up capital of Birr 7.75 billion, which is well over the regulator’s minimum capital requirement for establishing bank business in Ethiopia. Total capital of the Bank reached Birr 12.8 billion, that includes the paid-up capital, legal and special reserves. Currently, the Bank’s total asset amounted to Birr 56.6 billion.",
  //    "tel": "0115584538",
  //    "email": "info@tsedeybank-sc.com",
  //    "website":"www.https://tsedeybank-sc.com",
  //    "fax":""
  //  },  
 ];
//  detail = 
 final List<String> additional = [
  'Abay Bank S.C.', 'Bank of Abyssinia', 'Bunna Bank S.C', 'Cooperative Bank of Oromia', 'Global Bank S.C', 'Goh Betoch Bank S.C.', 'Hijra Bank S.C.', 'Lion Int. Bank S.C.', 'Nib Int. Bank S.C.', 'Sidama Bank S.C.', 'Siinqee Bank S.C.', 'Tsehay Bank S.C.', 'Zemen Bank S.C.'
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
          'Banks',
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
             child: ListView(
               children: [
                 SizedBox(
                  height: 600,
                   child: ListView.builder(
                     itemCount: Banks.length,
                     itemBuilder: (context, index) {
                       final String icon = Banks[index];
                       final String name = Name[index]; // Assuming Name has data for each bank
                   
                       return Column(
                         children: [
                           Container(
                             child: GestureDetector(
                               onTap: () {
                                if(index<14){
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
                //  SizedBox(
                //   height: 400,
                //    child: ListView.builder(
                //     itemCount: additional.length,
                    
                //     itemBuilder:  (context, index) {
                   
                //       return Column(
                //         children: [
                //           Text(additional[index])
                //         ],
                //       );
                //     }),
                //  )
                //  const Padding(
                //    padding: EdgeInsets.only(left: 20.0,right: 20,),
                //    child: Row(
                //      children: [
                //        Text("Usefull Addresses",style: TextStyle(fontSize: 16.0),textAlign: TextAlign.center,)
                //      ],
                //    ),
                //  ),
                //    // SizedBox(height: 20,),
            // Expanded(child: ExpandedPanel(data: data))
               ],
             ),
           ),  
    
          bottomNavigationBar:const CustomeButtomNavBar(index: 3,),


    );
    return scaffold;
  }

}