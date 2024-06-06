import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/FAQ.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/expandedPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutAlmanac extends StatelessWidget {
  const AboutAlmanac({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>> contact =[
    {
      "title":"aboutAlmanac almanac inquiry",
    "content": " +251 115 518 055"
    },
     {
      "title":"aboutAlmanac business inquiry",
    "content": " +251 115 518 055"
     }
   

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
          'Addis Almanac',
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
      // Container(
        ListView(
             children:const [
             
          Padding(padding: EdgeInsets.only(top: 10.0,left: 30,right: 30),
        child:Column(
          children: [
                Text(textAlign: TextAlign.justify,"Ethiopia's economy has faced several difficulties in recent years as a result of both internal and foreign changes in the world economy. Estimates for GDP growth in 2022 and 2023 were hovering at 6%, but forecasts show an upward trend with growth rates of 6.3 percent in 2024 and 6.7 percent in 2025. The economic environment has been challenging due to galloping inflation, rising unemployment, increasing scarcity of foreign currency, the growing depreciation of the Birr against the USD, and negative trade balance among others. The overall amount of debt owed by the country is USD 63.2 billion by September 2023, of which USD 27.7 billion is external, making it an immense burden. Given the current macroeconomic difficulties in Ethiopia especially in the last five years, it is important to highlight that the banking industry has performed very well and resiliently. The overall assets of banks as of June 2023 increased to Birr 2.7 trillion. A significant amount of this money was possessed by private banks, who claimed to control Birr 1.4 trillion, or 52% of the sector's total assets. On the other hand, the Commercial Bank of Ethiopia (CBE) demonstrated its strong position by accumulating total assets of Birr 1.3 trillion, which means it commanded a significant 48 percent of the total assets in the sector."),
                 SizedBox(height: 30,),
                Text(textAlign: TextAlign.justify,"The banking sector has witnessed significant growth in recent years, with private banks experiencing a substantial increase in total equity. This growth, averaging 36 percent annually, can be attributed to the influx of new market entrants and the strategic capitalization initiatives undertaken by established banks, often in response to regulatory pressures. Such capitalization efforts have not only strengthened the financial resilience of banks, allowing them to better withstand economic fluctuations, but have also enhanced their ability to manage lending risks, thereby boosting investors and depositor confidence."),
                SizedBox(height: 30,),
                Text(textAlign: TextAlign.justify,"The financial landscape in Ethiopia is witnessing a significant transformation, with commercial banks experiencing a robust increase in deposit mobilization. The impressive total of 2.2 trillion Birr in deposits as of June 2023, coupled with an average growth rate of 26.7% over the past four years. This growth is a testament to the strategic expansion of banking services across Ethiopia, enhancing financial inclusion and providing a wider spectrum of the population with access to essential financial services."),
                SizedBox(height: 30,),
                Text(textAlign: TextAlign.justify,"Over the past five years, the majority of commercial banks have demonstrated a consistent trend of impressive profitability. This upward trajectory culminated in the financial year of 2022/23, during which the collective net profit after tax generated by all commercial banks in Ethiopia soared to a substantial Birr 48 billion. Private Banks emerged as significant contributors to this milestone, with their individual net profits amounting to an impressive Birr 30.7 billion, while the renowned Commercial Bank of Ethiopia (CBE) accounted for a substantial Birr 17.4 billion of the total profits. To maintain this growth trajectory, continuous innovation and strategic adaptation to the economic landscape are essential."),
                 SizedBox(height: 30,),
                 Text(textAlign: TextAlign.justify,"However, currently, the banking sector is facing restraints due to the restriction of credit expansion to a maximum of 14 percent with the aim of containing the galloping inflation. Moreover, while the establishment of the deposit insurance fund marks a positive stride, some concerns arise regarding the expedited nature of the action and the potential oversight of the regulation's impact on banks. Moreover, critical factors such as segmentation, banks' risk profiles, tenure, financial robustness, and the intricacies of premium setting might be considered. "),
                SizedBox(height: 30,),
                 Text(textAlign: TextAlign.justify,"The Ethiopian insurance sector presents a unique landscape with its 18 insurance companies and a single re-insurer, yet it faces the challenge of low penetration at just 2%. This figure is significantly lower than the African average, highlighting a considerable gap in the market. Despite the low coverage of insurance in Ethiopia, insurance sector in Ethiopia has shown progressive development, particularly in the non-life insurance segment. With total assets reaching Birr 47.82 billion by June 2023, non-life insurers have significantly outpaced life insurance companies, which held assets of Birr 3.73 billion. This disparity highlights the dominance of non-life insurance in terms of asset size, capital base, and profitability. "),
                 SizedBox(height: 30,),

                 Text(textAlign: TextAlign.justify,"Additionally, the market is characterized by a high concentration of assets among a few insurers, with the top three non-life insurers holding over 40% of the market share consistently for five years, and EIC commanding a quarter of the market alone. In the same manner, the non-life insurance sector in Ethiopia has demonstrated robust growth and financial stability, with total equity surpassing that of the life insurance sector annually. From 2019 to 2023, the non-life insurance sector's equity grew from Birr 7.32 billion to Birr 15.20 billion, reflecting substantial capital accumulation. The total profit of 18 insurance companies also hit Birr 3.9 billion by 2022/23 from Birr 1.6 Billion in 2018/19. "),
                 SizedBox(height: 30,),

                 Text(textAlign: TextAlign.justify,"In June 2023, Ethiopia's microfinance institutions had a 3.5-fold increase in total assets from amount in 2017/18, reaching Birr 61.7 billion. Compulsory savings and voluntary savings have a seen significant growth, with voluntary savings increasing from Birr 7.43 Billion in 2017/18 to Birr 22.84 Billion in 2022/23. Time deposits have seen remarkable growth, with an average annual growth rate of 38.2percent, and demand deposits have seen an 88.7percent increase. However, some microfinance institutions have transformed into banks, and new ones need to fill their market, with stakeholders facilitating this process. The Ethiopian financial landscape is undergoing a significant transformation, mainly by fintech companies. These firms are capitalizing on the government's initiatives like telebirr and CBE birr to expand digital payment systems. The expansion of digital payment systems leads to financial inclusion, through digital payment solutions that could reach the unbanked population, further integrating them into the financial system. "),
                   SizedBox(height: 30,),
                 Text(textAlign: TextAlign.justify,"Ethiopia's journey towards a robust capital market is marked by the establishment Ethiopian Capital Market Authority by Proclamation No. 1248/2021. The Ethiopian Capital Market Authority's issuance of 15 licenses to service providers is a testament to the country's commitment to fostering a transparent and structured financial market. This development not only offers domestic investors diverse opportunities for portfolio growth and income generation but also promises to be a vital source of business financing. While challenges such as foreign capital flow restrictions remain, the focus on domestic investor education and legal reforms is key to nurturing confidence in Ethiopia's capital market potential."),
              
          ],
        ) 
        ),
        ])
         
         
          
    
      
     );
     
    return scaffold;
  // );
  }
 
  // }
  
}