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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Insurance_Options extends StatelessWidget {
 

  final Insurances = [
    "assets/images/almanac_lists/insurance_logos/1.png",
     "assets/images/almanac_lists/insurance_logos/2.png",
     "assets/images/almanac_lists/insurance_logos/3.png",
     "assets/images/almanac_lists/insurance_logos/4.png",
     "assets/images/almanac_lists/insurance_logos/5.png",
    "assets/images/almanac_lists/insurance_logos/7.png",
    "assets/images/almanac_lists/insurance_logos/6.png",
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

 ];
final Name = [
    "Abay Insurance S.C.",
    "Africa Insurance Company S.C.",
    "Awash Insurance S.C.",
    "Berhan Insurance S.C.",
    "Ethio-Life & General Insurance S.C.",
    "Lucy Insurance S.C.",
    "Nib Insurance Company S.C.",
     "Bunna Insurance S.C.",
"Ethiopian Insurance Corporation",
"Global Insurance Company S.C.",
"Lion Insurance Company S.C.",
"National Insurance Company of Ethiopia S.C.",
"Nile Insurance Company S.C.",
"Nyala Insurance S.C.",
"Oromia Insurance S.C.",
"Tsehay Insurance S.C.",
"United Insurance Company S.C.",


 ];
  // const Insurance_Options({super.key});
  
  final List<Map<String, String>> detail = [
    {
      "sector":"Insurance",
     "name": "Abay Insurance S.C.",
     "logo": "assets/images/almanac_lists/insurance_logos/1.png",
     "adv_image":"assets/images/almanac_lists/adv/11.jpg",
     "adv_video":"",
     "profile": "Abay Insurance S.C. was established in July 2010 in accordance with the licensing and supervision of insurance business proclamation No. 86/1994.The prevailing paid up capital of the company is Birr 300,000,000 and subscribed capital of 500,000,000. Currently, the company is providing General and Long Term (Life Assurance) service under 31 branch offices that operate in different regions of the country.",
     "tel": " +251-115535300",
     "email": "info@abayinsurance.com",
     "website":"www.abyinsurance.com",
     "fax":" Fax: +251-11586328"
   },
    {
      "sector":"Insurance",
     "name": "Africa Insurance Company S.C.",
     "logo": "assets/images/almanac_lists/insurance_logos/2.png",
     "adv_image":"assets/images/almanac_lists/adv/12.jpg",
     "adv_video":"",
     "profile": "Africa Insurance Company (AIC) is a privately owned Professional Insurance Company established in 1994 in accordance with the Licensing and Supervision of Insurance Business Proclamation No.8/1994, and the commercial code of Ethiopia.The company is set up with fully paid up capital of 30 million Ethiopian Birr. The capital is divided into 30,000 ordinary shares, each with a par value of 1000 Ethiopian Birr. The capital base AIC utilizes makes it the Strongest Private Insurance Company in the Country. Although AIC is a Young Company, its personnel who are implementing the day-to-day activities of the company are highly qualified in their particular job assignments which has enabled it to provide effective service to its clients. The Corporate Motto” Committed to Excellence and Quality Services” has been adapted immediately on commencing its operation, as a guiding principle in all aspects of AIC’s activities.",
     "tel": "  +251-116637716",
     "email": "md@africainsurancesc.com",
     "website":"",
     "fax":"Fax: +251-116638253"
   },
   {
      "sector":"Insurance",
     "name": "Awash Insurance S.C.",
     "logo": "assets/images/almanac_lists/insurance_logos/3.png",
     "adv_image":"assets/images/almanac_lists/adv/13.jpg",
     "adv_video":"assets/video/Awash_Insurance.mp4",
     "profile": "Founded in 1994, Awash Insurance was launched following the liberalization of the ﬁnancial sector in Ethiopia, making it one of the pioneer insurance companies in the country. Awash Insurance stands on a solid foundation with its richly unique and diverse composition, which speaks to our ability to understand customer needs. We continuously renew our commitment to perfecting our service towards excellence by ensuring the seamless delivery of digitally astute solutions with a human touch.",
     "tel": " +251-115570001/2",
     "email": "aic@ethionet.et/aic@awashinsurance.com",
     "website":"www.awashinsurance.com",
     "fax":"Fax: +251-115570208"
   },
   {
      "sector":"Insurance",
     "name": "Berhan Insurance S.C.",
     "logo": "assets/images/almanac_lists/insurance_logos/4.png",
     "adv_image":"assets/images/almanac_lists/adv/14.jpg",
     "adv_video":"",
     "profile": "Berhan Insurance S.C. was established in October, 2010 with a paid up capital of Birr 9.7 Million, under proclamation No. 86/1994. Being initiated by Berhan Bank S.C, the key founding shareholders of the Company were, four hundred fifty five, which comprised influential and well-known investors in the country. The Company has started operation in June, 2011 and currently it is operating through its thirty branches & two contact offices, in which twenty are in Addis Ababa, and the remaining twelve are in Hawassa, Wolaita Sodo, Bahir Dar, Mekelle, Adama, Dessie, Hossana, Shashemene, Arba Minch, Jimma, Dilla & Bishoftu towns.Owing to its successful penetration and promising profitability, the number of company’s shareholders is growing from time to time and has reached over 1,600. Berhan Insurance has successfully managed to fulfill the National Bank of Ethiopia’s paid up capital requirement for both general and life insurance providers in the country and its paid up capital reached at Birr 200 million.",
     "tel": " +251-114674423/46/+251-115577629/+251-114706831/+251-115577883",
     "email": "berhaninsurance@gmail.com/info@berhaninsurance.com",
     "website":"www.berhaninsurance,com",
     "fax":"Fax: +251-114668701"
   },
   {
      "sector":"Insurance",
     "name": "Ethio-Life & General Insurance S.C.",
     "logo": "assets/images/almanac_lists/insurance_logos/5.png",
     "adv_image":"assets/images/almanac_lists/adv/15.jpg",
     "adv_video":"assets/video/ethio.mp4",
     "profile": "Ethio-Life Insurance S.C. was founded by 117 shareholders with a clear vision of introducing and promoting Long-term insurance to the homes of millions. It obtained its license from the National Bank of Ethiopia and commenced operation in October 2008 to transact Long-term (life) insurance business.Ethio-Life continued to be the ONLY specialized company in the life insurance business in the Ethiopian insurance industry until August, 2012 In consideration of the immense potentials and viability of the general insurance business emanating from the rapid economic growth of the country, shareholders of Ethio-Life were determined to expand the service of the company by including Non-life (general) insurance products into its business portfolio.",
     "tel": " +251-115549651",
     "email": "info@eliginsurance.com",
     "website":"www.eliginsurance.com",
     "fax":"Fax: +251-115549653"
   },
    {
      "sector":"Insurance",
     "name": "Lucy Insurance S.C.",
     "logo": "assets/images/almanac_lists/insurance_logos/7.png",
     "adv_image":"assets/images/almanac_lists/adv/25.jpg",
     "adv_video":"",
     "profile": "Lucy Insurance S.C. was established in 2012 with 39 Visionary Shareholders who are renowned business people involved in various businesses in the country. The company was established with a paid up capital of birr 8,035,000.The company has grown its Paid up Capital to Birr 75,000,000.00 as per the Directive of the National Bank of Ethiopia that requires Insurance companies to raise their minimum paid up capital to 60,000,000.00 and 75,000,000.00 for General Insurance & General & Life Insurance respectively. As of today, the number of the company’s shareholders reached 508. In its annual meeting of shareholders it was decided that the company’s paid up capital has to be raised to Birr 200,000,000.00.",
     "tel": " +251-114671784/704410/703361",
     "email": "Lucyinsurance@ethionet.et",
     "website":"www.lucyinsuranceet.com",
     "fax":"Fax: +251-114671896"
   },
   {
      "sector":"Insurance",
     "name": "Nib Insurance Company S.C.",
     "logo": "assets/images/almanac_lists/insurance_logos/6.png",
     "adv_image":"assets/images/almanac_lists/adv/24.jpg",
     "adv_video":"assets/video/nib.mp4",
     "profile": "Nib Insurance Company (S.C.) is a Private Insurance Company which was established in May 2, 2002 by 658 Shareholders, a paid up million as a sister company to Nib International Bank.The Company which started its general insurance business operation on May 2, 2002 with only 4 branch offices in Addis Ababa becomes a composite insurer since September, 2007 and including the life Assurance Department at the Head Office, Nib Insurance Company S.Co is currently rendering its general insurance and life assurance services through its 48 branch offices and 4 contact office situated in different parts of the country in and outside of Addis Ababa.",
     "tel": "+251-115528194/96; +251-115535129/32",
     "email": "nibinsgm@ethionet.et",
     "website":"www.nibinsurancethiopia.com",
     "fax":"Fax: +251-115528193"
   },
  
  ]; 

  final List<Map<String,dynamic>> data = [
  {
  "title":"Zemen Insurance ",
"content": ""
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
          'Insurance',
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
                     itemCount: Insurances.length,
                     itemBuilder: (context, index) {
                       final String icon = Insurances[index];
                       final String name = Name[index]; // Assuming Name has data for each bank
                   
                       return Column(
                         children: [
                           Container(
                             child: GestureDetector(
                               onTap: () {
                                if(index<7){
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