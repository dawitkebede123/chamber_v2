import 'dart:async';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Company_detail.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
// Assuming these two are for SearchMoreIcon widget
// import 'package:chamber_of_commerce/pages/user/Company_detail.dart';
// import 'package:chamber_of_commerce/widgets/SearchMoreIcon.dart';

class SearchFieldAlmanac extends StatefulWidget {
  const SearchFieldAlmanac({Key? key}) : super(key: key);

  @override
  State<SearchFieldAlmanac> createState() => _SearchFieldState();
}
 final List<Map<String, String>> detail = [
   {
      "sector":"Bank",
     "name": "Awash Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/1.png",
     "adv_image":"assets/images/almanac_lists/adv/1.jpg",
     "adv_video":"assets/video/Awash.mp4",
     "profile": "Awash Bank, was established on November 10, 1994 after the downfall of the socialist regime. The Bank was established by 486 founding shareholders with a paid-up capital of Birr 24.2 million and started banking operations on Feb. 13, 1995.Vision:“To be the the best and preferred financial services provider where customers feel valued”Mission:“To provide the most Innovative and Accessible banking services  to our customers using the most relevant technology ,and motivated and talented staff to maximize stakeholders value and influence the life of the society positively”",
     "tel": "8980/ +251-115571254",
     "email": "contactcenter@awashbank.com",
     "website":"www.awashbank.com",
     "fax":" +251-115570136"
   },
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
     "name": "Berhan Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/3.png",
     "adv_image":"assets/images/almanac_lists/adv/3.jpg",
     "adv_video":"",
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
     "name": "Oromia Bank S.C.",
     "logo": "assets/images/almanac_lists/bank_logos/11.png",
     "adv_image":"assets/images/almanac_lists/adv/20.jpg",
     "adv_video":"",
     "profile": "Oromia Bank S.C. (OB) was established on September 18, 2008 in accordance with the pertinent laws, regulations and the 1960 Commercial Code of Ethiopia, by the Monetary and Banking Proclamation No. 83/1994 and by the Licensing and Supervision of Banking Proclamation No. 592/2008. Through the years, our presence has grown tremendously. After opening the first Bole branch on October 25, 2008 in Addis Ababa – Africa avenue, we continued to expand by establishing over 500 branches across the nation. But growth, as a company, is more than just brick-and-mortar. It’s a reflection of our performance and our ability to earn the public’s trust. Today, we continue to be recognized as a top performing bank with paid up capital to Birr 5.4 Billion.",
     "tel": " +251-115572113/2002",
     "email": "oib@ethionet.et",
     "website":"www.oromiabank.com",
     "fax":" +251-115572110"
   },
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
  { "sector":"Fintech",
     "name": "Ethswitch",
     "logo": "assets/images/almanac_lists/fintech_logos/fintech2.png",
     "adv_image":"assets/images/almanac_lists/adv/18.jpg",
     "adv_video":"",
     "profile": "Ethswitch, established in 2011, is a share company fully owned by all banks in Ethiopia. It is established mainly to provide simple, affordable, secured, and efficient e-payment infrastructure services to retail payment service providers, and through them, to end users in Ethiopia; by deploying state-of-the-art technology along with highly skilled and motivated professionals. The underling mandate of Ethswitch is contributing to the modernization of the national payments system and enhancement of financial inclusion in the country. Since 2016, it has enabled interoperability of ATMs operated by all banks. Currently, it is also rolling out projects to achieve interoperability of POS terminals and other digital payment platforms operated by all financial service providers.",
     "tel": " +251-115571204",
     "email": "info@ethswitch.com",
     "website":"www.ethswitch.com",
     "fax":" +251-115571115"
     },
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
     "adv_video":"",
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

      "sector":"Micro Finance",
     "name": "Elsabi Microfinance Institution S.C.",
     "logo": "assets/images/almanac_lists/micro_finance_logos/1.png",
     "adv_image":"assets/images/almanac_lists/adv/17.jpg",
     "adv_video":"",
     "profile": "established on June 8, 2022. Our journey began with a simple yet powerful vision – to empower underserved communities by providing them access to financial services that were previously unavailable to them. We firmly believe that access to finance is a critical component of poverty eradication and sustainable economic development.",
     "tel": " +251-116732829/+251-116675793/+251-116734807",
     "email": "info@elsani.net",
     "website":"www.elsabi.net",
     "fax":""
  },
  {
      "sector":"Micro Finance",
     "name": "Amigos Saving and Credit Cooporate S.C",
     "logo": "assets/images/almanac_lists/micro_finance_logos/2.png",
     "adv_image":"assets/images/almanac_lists/adv/16.jpg",
     "adv_video":"",
     "profile": "10 years from now in 2005 E.C. 20 friends (ie. ‘Amigos’) planned and founded Amigos saving and credit cooperation with a capital of only 9,000ETB. Since then, our company has lived to fulfill its purpose of making its members successful by providing the most suitable and flexible financial service products. Amigos is well known to consider and treat its member customers and staff as family. Right now Amigos sacco has more that Six thousand members, nearly 80 employees and a total asset of one billion five hundred million birr.",
     "tel": "8511",
     "email": "info@amigossacco.net",
     "website":"www.amigossaccp.net",
     "fax":""
   },
 ];
class _SearchFieldState extends State<SearchFieldAlmanac> {
  final TextEditingController _searchController = TextEditingController();
  Stream<List<Map<String, String>>>? _searchResultsStream;
  bool _showListView = false;

  List<Map<String, String>> searchInCompanyList(String searchTerm, List<Map<String, String>> data) {
    // Lowercase both search term and company names for case-insensitive search
    searchTerm = searchTerm.toLowerCase();
    return data.where((company) => 
        company['name']!.toLowerCase().contains(searchTerm) // Search by name
    ).toList();
  }

  @override
  void initState() {
    super.initState();
    // Remove Firebase initialization as you're using a local list
    // Firebase.initializeApp();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final searchTerm = _searchController.text.toLowerCase();
    setState(() {
      _searchResultsStream = Stream.fromIterable([searchInCompanyList(searchTerm, detail)]);
      _showListView = searchTerm.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSearchTextField(),
        if (_showListView) _buildSearchResults(),
      ],
    );
  }

  Widget _buildSearchTextField() {
    return Container(
      height: 48,
      child: TextField(
        maxLines: 1,
        controller: _searchController,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(vertical: 12.0),
          filled: true,
          fillColor: Color.fromARGB(255, 229, 234, 232),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.only(left: 16,right: 16),
          hintText: 'Search Almanac   ',
          suffixIcon: _buildSuffixIcon(),
        ),
      ),
    );
  }

  Widget _buildSuffixIcon() {
    return Container(
      width: 200,
      child: const IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0,right: 16),
              child: Icon(Icons.search),
            ),
            // Assuming SearchMoreIcon widget is implemented elsewhere
            // Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: SearchFieldMoreIcon(),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    return StreamBuilder<List<Map<String, String>>>(
      stream: _searchResultsStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return Container(
          height: 200.0,
          child: _buildListView(snapshot.data ?? []),
        );
      },
    );
  }

  Widget _buildListView(List<Map<String, String>> companies) {
    if (companies.isEmpty) {
      return Center(child: Text('No companies found.'));
    }
    return ListView.builder(
      itemCount: companies.length,
      itemBuilder: (context, index) {
        final company = companies[index];
        final name = company['name'];
        return ListTile(
          title: Text('$name'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Company(detail: company)
                //  Company(data: company),
              ),
            );
          },
            );
      },
    );
  }
}

