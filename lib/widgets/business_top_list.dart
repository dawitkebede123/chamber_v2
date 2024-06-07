import 'package:chamber_of_commerce/pages/user/Company%20_business.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Business_Top_List extends StatefulWidget {
  // final List<Map<String, String>> data ;
   final int index; 
  const Business_Top_List({super.key,required this.index});

  @override
  State<Business_Top_List> createState() => _Business_Top_ListState();
}

class _Business_Top_ListState extends State<Business_Top_List> {
  @override
  Widget build(BuildContext context) {
     
   List<Map<String, String>> businessCompanyProfile = [
   {
      "sector":"Manufacturing",
     "name": "AARTI STEEL PLC",
     "logo": "",
     "adv_image":"AARTI Steel copy.png",
     "adv_video":"assets/video/business/1.mp4",
     "profile": "",
     "tel": "0116612050/62/0116612505",
     "email": "aartiethiopia@gmail.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"EXPORT",
     "name": "ABBAHWA TRADING P.L.C",
     "logo": "1.jpg",
     "adv_image":"1.jpg",
     "adv_video":"assets/video/business/2.mp4",
     "profile": "",
     "tel": "0114403355/0114403356",
     "email": "abbahawaimport@gmail.com",
     "website":"http://www.abbahawa.com",
     "fax":""
   },
   //Mesert
    {
     "sector":"EXPORT",
     "name": "ABAT IMPORT AND EXPORT PLC",
     "logo": "2.jpg",
     "adv_image":"2.jpg",
     "adv_video":"assets/video/business/3.mp4",
     "profile": "",
     "tel": "0111110882",
     "email": "abatexport@gmail.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"MINING",
     "name": "ABRHAM GOLD MINING MACHINERY",
     "logo": "",
     "adv_image":"Abraham Gold Mining Machinery copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"Community, Social And Personal Services",
     "name": "ADDIS HIWOT HOSPITAL",
     "logo": "",
     "adv_image":"Addis hiwot copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0116180449/6623916",
     "email": "kehaseberhe3@gmail.com",
     "website":"http://www.addishiwothospital.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "AGRAPH TRADING",
     "logo": "",
     "adv_image":"Agraph Trading copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "agraphtradingplc@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "AGRO-VET PLC",
     "logo": "",
     "adv_image":"Agro-Vet PLC B copy 2.png",
     "adv_video":"",
     "profile": "",
     "tel": "0114169327",
     "email": "agrovetplc1997@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "AHADU MARBLE & GRANITE",
     "logo": "",
     "adv_image":"Ahadu Marble & Granite copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "ahadugilcons@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "AKLESS PAPER PRODUCTS PLC",
     "logo": "",
     "adv_image":"Akless Paper Products PLC copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0113692686",
     "email": "aklesspaper6711@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "ALAMI INDUSTRIAL ENGINEERING",
     "logo": "",
     "adv_image":"Alami Industrial Engineering copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0112760012",
     "email": "alami3600@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "Alta COMPUTER",
     "logo": "",
     "adv_image":"Alta half page1 copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0113693582 /0113480778",
     "email": "Cherinetg@altacomputec.com",
     "website":"http://www.altacomputer.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "AWEKE ASRADE IMPORT & EXPORT",
     "logo": "",
     "adv_image":"Aweke Asrade Import & Export copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
     {
     "sector":"IMPORT",
     "name": "BENVENUITI BROTHERS PVT.LTD.CO",
     "logo": "",
     "adv_image":"BENVENUITI BROTHERS PVT.LTD.CO B copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "BELAYAB CABLE",
     "logo": "",
     "adv_image":"Belayab Cable B copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0111561323",
     "email": "belayabcable@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "BETA AND DULAS ENGINEERING",
     "logo": "",
     "adv_image":"Beta and dulas Engineering Advertisement 17 x 26 cm (2) copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "BIOVET IMPORT",
     "logo": "",
     "adv_image":"Bethel copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "contact.biovet@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "BETHEL ENGINEERING",
     "logo": "",
     "adv_image":"Bethel_1 copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0115526018/0115526653",
     "email": "engineeringbethelplc@gmail.com",
     "website":"http://www.bethelengineeringplc.com",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "CGF-DY ROOFING TILE PLC",
     "logo": "",
     "adv_image":"CGF-DY ROOFING TILE PLC copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0111270472",
     "email": "sclesdylucy@cgtbg.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"EXPORT",
     "name": "OROMIA AGRICULTURAL COOPERATIVES FEDERATION",
     "logo": "",
     "adv_image":"COOP copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"Real Estate And Business Service",
     "name": "Commercial Nominees ",
     "logo": "",
     "adv_image":"Commercial Nominees (2) copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0114422903",
     "email": "info@commercialnominees.com",
     "website":"http://www.commercialnominees.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "DEJEN G/MESKEL IMPORT AND EXPORT",
     "logo": "",
     "adv_image":"Dejen GMeskel Import and Export copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "EDISON ELECTRICAL SOLUTION",
     "logo": "",
     "adv_image":"Edison copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"Real Estate And Business Service",
     "name": "EDOMIAS INTERNATIONAL",
     "logo": "",
     "adv_image":"Edomias copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "info@jobsinethiopia.net.et",
     "website":"http://www.jobsinethiopia.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "ELAY TRADING PLC",
     "logo": "",
     "adv_image":"Elay Trading PLC copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0115578857",
     "email": "elaytrading@gmail.com",
     "website":"http://elaytrading.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "ADAMANT INVESTMENT PLC",
     "logo": "",
     "adv_image":"adamant  quarter copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "adamantplc@gmail.com",
     "website":"http://www.adamantplc.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "ETHOF",
     "logo": "",
     "adv_image":"addis fana copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"Real Estate And Business Service",
     "name": "AFRICOM TECHNOLOGIES PLC",
     "logo": "",
     "adv_image":"africom copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "baheruzz@gmail.com",
     "website":"www.africomtech.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "AHADU PLC",
     "logo": "",
     "adv_image":"ahadu copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0116298816/17/18",
     "email": "ahaduahadukes@gmail.com",
     "website":"http://ahadugroup.com",
     "fax":""
   },
    {
     "sector":"",
     "name": "ALMAW BEKALU IMPORT EXPORT",
     "logo": "",
     "adv_image":"almaw and ABAC copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0112299023",
     "email": "almawexport@gmail.com",
     "website":"http://www.almawimportexport.com",
     "fax":""
   },
    {
     "sector":"Community, Social And Personal Services",
     "name": "ARSHO MEDICAL LABORATORIES PLC",
     "logo": "",
     "adv_image":"arsho copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0116639929/0116639928",
     "email": "arsholab@ethionet.et",
     "website":"http://www.arsholab.com",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "MORE AUTO RICAMBI",
     "logo": "",
     "adv_image":"auto recamb copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "moreautoricambi2015@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "BEKAS CHEMICALS P.L.C",
     "logo": "",
     "adv_image":"bekas full copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0118495401/05",
     "email": "bekaschemical@gmail.com",
     "website":"http://www.bekaschemical.com",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "BELAYAB FOODS PRODUCTION PLC",
     "logo": "",
     "adv_image":"belayab foods copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "info@belayabfoods.com",
     "website":"http://WWW.BELAYABFOODSPRODUCTION.COM",
     "fax":""
   },
  //  agl
    {
     "sector":"EXPORT",
     "name": "TRADING PLC",
     "logo": "",
     "adv_image":"beshenfer copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "BISELEX ETHIOPIA LTD",
     "logo": "",
     "adv_image":"biselex half copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0115514666/5511333",
     "email": "biselexeth@gmail.com",
     "website":"http://www.biselexethiopia.com",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "BULALA DINKITI AGRICULTUR TRADE & INDUSTRY PLC",
     "logo": "",
     "adv_image":"bullala final copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0114655507",
     "email": "herieshete@yahoo.com",
     "website":"http://WWW.BULALADINKITI.COM",
     "fax":""
   },
    {
     "sector":"Manufacturing",
     "name": "BURAYU DEVELOPMENT PLC",
     "logo": "",
     "adv_image":"burayu packaging copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
   {
     "sector":"EXPORT",
     "name": "CHALBEX TRADING PLC",
     "logo": "",
     "adv_image":"chalbex trading plc copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0118931313",
     "email": "chalbextplc@gmail.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"IMPORT",
     "name": "DA IMPORT",
     "logo": "",
     "adv_image":"copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0114426188",
     "email": "daimporter@gmail.com",
     "website":"http://www.daimporter.com",
     "fax":""
   },
   {
     "sector":"Wholesale And Retail",
     "name": "DAKY TRADING P L C",
     "logo": "",
     "adv_image":"daky trading plc one eight copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "intisaramin22@gmail.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"Real Estate And Business Service",
     "name": "DALLOL PROPERTIES",
     "logo": "",
     "adv_image":"dallo full copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
  
     {
     "sector":"IMPORT",
     "name": "DEMISS BUILDING MATERIAL",
     "logo": "",
     "adv_image":"demisse final copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
     {
     "sector":"Real Estate And Business Service",
     "name": "DIRIBA DEFERSHA GENERAL CONTRACTOR",
     "logo": "",
     "adv_image":"diriba defersha general contractor copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "hubenna@ymail.com",
     "website":"http://www.ddgconstructions.com",
     "fax":""
   },
     {
     "sector":"IMPORT",
     "name": "DOBA INDUSTRIAL TRADING ",
     "logo": "",
     "adv_image":"doba one eight copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0116478647",
     "email": "dobaindustrial@ethionet.et",
     "website":"",
     "fax":""
   },

  {
     "sector":"MANUFACTURING",
     "name": "ALEMU SUPLIMENTARY FOOD PROCESING AND SALES PRIVATE ENTERPRISE",
     "logo": "7.jpg",
     "adv_image":"7.jpg",
     "adv_video":"assets/video/business/4.mp4",
     "profile": "",
     "tel": "0938650746",
     "email": "mealfancheyigen@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "B & C ALMUNIUM P.L.C",
     "logo": "9.jpg",
     "adv_image":"9.jpg",
     "adv_video":"assets/video/business/4.mp4",
     "profile": "",
     "tel": "0116627900",
     "email": "info@bacalum.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"MANUFACTURING",
     "name": "ELTEX TEXTILE AND GARMENT FACTORY/ELIAS TESFAYE H/MARIAM/ ",
     "logo": "19.jpg",
     "adv_image":"19.jpg",
     "adv_video":"assets/video/business/18.mp4",
     "profile": "",
     "tel": "0114390444",
     "email": "eliastknitt22@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"EXPORT",
     "name": "OROMIA COFFEE FARMERS COOPERATIVE SOLICTIES UNION one.Koo coffee",
     "logo": "33.jpg",
     "adv_image":"33.jpg",
     "adv_video":"assets/video/business/32.mp4",
     "profile": "",
     "tel": "0114450488",
     "email": "coffunion@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "HAST ENTERPRISE HORN OF AFRICA STEEL",
     "logo": "24.jpg",
     "adv_image":"24.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0112758275",
     "email": "haststeel@gmail.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"CONSTRUCTION",
     "name": "T L TRADING PLC",
     "logo": "41.jpg",
     "adv_image":"41.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0911923714",
     "email": "tltrading@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "AHADU GIL CONSTRUCTION PLC",
     "logo": "5.jpg",
     "adv_image":"5.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0931304747",
     "email": "ahadugilcons@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"CONSTRUCTION ",
     "name": "Esdros construction, Trade and industry s.c ",
     "logo": "21.jpg",
     "adv_image":"21.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0111 57 98 63",
     "email": "info@esdros.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"Transport",
     "name": "Africa global logistics(AGL) ",
     "logo": "4.jpg",
     "adv_image":"4.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0115570600",
     "email": "wongel.yohannes@aglgroup.com",
     "website":"",
     "fax":""
   },
   //BDO
   {
     "sector":"manufacturing",
     "name": "buluko textile",
     "logo": "15.jpg",
     "adv_image":"bulko last and final copy.png",
     "adv_video":"assets/video/business/11.mp4",
     "profile": "",
     "tel": "0113668108",
     "email": "bulukotextilesharecompany@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"manufacturing",
     "name": "oromia industrial park",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/33.mp4",
     "profile": "",
     "tel": "01111575495",
     "email": "opidc.marketing@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"IMPORT",
     "name": "riffo",
     "logo": "36.jpg",
     "adv_image":"36.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "'0901669900",
     "email": "info@ezmtrade.com",
     "website":"",
     "fax":""
   },

  //  Africa global logistics(AGL)
  //  Ahadu Marbel & granite
  //  Alemu supplementart food processing & sales
  //  bac almunium
  //  esdros construction, Trade and industry s.c
  //  HAS ENTRPRISE

    {
     "sector":"IMPORT",
     "name": "MESERET HAILEGEBRAL ANDARGE",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/5.mp4",
     "profile": "",
     "tel": "0118134405",
     "email": "etarteceramics@gmail.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"IMPORT",
     "name": "ALPHA BUSINESS P.L.C",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/6.mp4",
     "profile": "",
     "tel": "0111550200",
     "email": "alpha.et@gmail.com",
     "website":"http://www.alphabusinessplc.com",
     "fax":""
   },
   {
     "sector":"MANUFACTURING",
     "name": "AMAGA PLC",
     "logo": "8.jpg",
     "adv_image":"8.jpg",
     "adv_video":"assets/video/business/7.mp4",
     "profile": "",
     "tel": "0911201334",
     "email": "amaga@ethionet.et",
     "website":"",
     "fax":""
   },
   {
     "sector":"REAL ESTATE AND BUSINESS SERVICE",
     "name": "B D O CONSULTING PLC",
     "logo": "10.jpg",
     "adv_image":"10.jpg",
     "adv_video":"assets/video/business/8.mp4",
     "profile": "",
     "tel": "0112757559",
     "email": "million.kibret@bdo-ea.com",
     "website":"http://www.bdo-ea.com",
     "fax":""
   },
   {
     "sector":"CONSTRUCTION",
     "name": "BEACON CONSULTING ARCHTECT AND ENGINEERING PLC",
     "logo": "11.jpg",
     "adv_image":"beacon trading copy.png",
     "adv_video":"assets/video/business/9.mp4",
     "profile": "",
     "tel": "0118787561",
     "email": "beaconconsult1@gmail.com",
     "website":"http://www.bdo-ea.com",
     "fax":""
   },
    {
     "sector":"EXPORT",
     "name": "BEKI TRADING PLC",
     "logo": "12.jpg",
     "adv_image":"12.jpg",
     "adv_video":"assets/video/business/10.mp4",
     "profile": "",
     "tel": "0116677546",
     "email": "bekitradingplc@gmail.com",
     "website":"http://bekitradingplc.com",
     "fax":""
   },
     {
     "sector":"EXPORT",
     "name": "BELAYNEH KINDE IMPORT AND EXPORT",
     "logo": "13.jpg",
     "adv_image":"13.jpg",
     "adv_video":"assets/video/business/11_1.mp4",
     "profile": "",
     "tel": "0111118740/0111556026",
     "email": "belaynehkindie@gmail.com",
     "website":"www.belayehkindie.com",
     "fax":""
   },
   {
     "sector":"IMPORT",
     "name": "BULE ELECTRICAL MATERIALS",
     "logo": "14.jpg",
     "adv_image":"14.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0111559755/0111559889/0111559055",
     "email": "",
     "website":"",
     "fax":""
   },
   ////buluko textile?
    {
     "sector":"EXPORT",
     "name": "DELTA PETROLEUM PLC",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/12.mp4",
     "profile": "",
     "tel": "0115574577",
     "email": "m.balcha@petroleumdelta.com",
     "website":"",
     "fax":""
   },
     {
     "sector":"MANUFACTURING",
     "name": "DERBA MIDROC CEMENT PLC",
     "logo": "16.jpg",
     "adv_image":"16.jpg",
     "adv_video":"assets/video/business/13.mp4",
     "profile": "",
     "tel": "0115549888/0115549810",
     "email": "m.balcha@petroleumdelta.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"MANUFACTURING",
     "name": "D.H GEDA TRADE & INDUSTRY PLC",
     "logo": "17.jpg",
     "adv_image":"DH geda copy.png",
     "adv_video":"assets/video/business/14.mp4",
     "profile": "",
     "tel": "0116638154/58/59/60",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"MANUFACTURING",
     "name": "EL AUTO ENGINEERING AND TRADING PLC",
     "logo": "18.jpg",
     "adv_image":"18.jpg",
     "adv_video":"assets/video/business/15.mp4",
     "profile": "",
     "tel": "0116676086",
     "email": "ceo@elautoas.com",
     "website":"http://www.elautoas.com",
     "fax":""
   },
   {
     "sector":"MAINTENNANCE AND REPAIR",
     "name": "ELECTRO MECCE ENGINEERING SERVICE",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/16.mp4",
     "profile": "",
     "tel": "0114671688/04",
     "email": "ceo@elautoas.com",
     "website":"http://www.elautoas.com",
     "fax":""
   },
   ///eltex?
    {
     "sector":"REAL ESTATE AND BUSINESS SERVICE",
     "name": "ERMIAS ADVERTISING AND PRINTING PLC",
     "logo": "20.jpg",
     "adv_image":"20.jpg",
     "adv_video":"assets/video/business/17.mp4",
     "profile": "",
     "tel": "0911218383/0911240200",
     "email": "ermias.e24@gmail.com",
     "website":"http://www.elautoas.com",
     "fax":""
   },
   {
     "sector":"TRANSPORT, STORAGE AND COMMUNICATION",
     "name": "ETHIOPIAN AIRLINES ENTERPRISE",
     "logo": "22.jpg",
     "adv_image":"22.jpg",
     "adv_video":"assets/video/business/22.mp4",
     "profile": "",
     "tel": "0116652222/0116656666",
     "email": "",
     "website":"",
     "fax":""
   },
    {
     "sector":"REAL ESTATE AND BUSINESS SERVICE",
     "name": "GIFT REAL ESTATE P.L.C",
     "logo": "23.jpg",
     "adv_image":"23.jpg",
     "adv_video":"assets/video/business/23.mp4",
     "profile": "",
     "tel": "0114655580",
     "email": "",
     "website":"",
     "fax":""
   },
   {
     "sector":"IMPORT",
     "name": "HAGBES P.L.C",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/22.mp4",
     "profile": "",
     "tel": "0116639191",
     "email": "",
     "website":"",
     "fax":""
   },
   {
     "sector":"CONSTRUCTION",
     "name": "HAVERIM CONSTRUCTION",
     "logo": "25.jpg",
     "adv_image":"25.jpg",
     "adv_video":"assets/video/business/23.mp4",
     "profile": "",
     "tel": "0116614536",
     "email": "haverimcon@gmail.com",
     "website":"",
     "fax":""
   },
   //ik-ram?
    {
     "sector":"EXPORT",
     "name": "IMPRESSION GENERAL TRADING PLC",
     "logo": "27.jpg",
     "adv_image":"27.jpg",
     "adv_video":"assets/video/business/25.mp4",
     "profile": "",
     "tel": "0116678279/80/81",
     "email": "",
     "website":"",
     "fax":""
   },
     {
     "sector":"IMPORT",
     "name": "JIGRA INTERNATIONAL BUSINESS PLC",
     "logo": "28.jpg",
     "adv_image":"28.jpg",
     "adv_video":"assets/video/business/26.mp4",
     "profile": "",
     "tel": "0116628166",
     "email": "",
     "website":"",
     "fax":""
   },
   //kacha?
   //

   {
     "sector":"MANUFACTURING",
     "name": "KEBROM FOAM AND PLASTIC MANUFACTURING AND DISTRIBU",
     "logo": "30.jpg",
     "adv_image":"30.jpg",
     "adv_video":"assets/video/business/28.mp4",
     "profile": "",
     "tel": "0118694169",
     "email": "",
     "website":"",
     "fax":""
   },

    {
     "sector":"TRANSPORT, STORAGE AND COMMUNICATION",
     "name": "MEKODI LOGISTICS PLC",
     "logo": "31.jpg",
     "adv_image":"31.jpg",
     "adv_video":"assets/video/business/29.mp4",
     "profile": "",
     "tel": "0118490204",
     "email": "",
     "website":"",
     "fax":""
   },
   
    {
     "sector":"REAL ESTATE AND BUSINESS SERVICE",
     "name": "MTT CONSULTING ARCHITECHTS AND ENGINEERING PLC",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/30.mp4",
     "profile": "",
     "tel": "0116684112",
     "email": "",
     "website":"",
     "fax":""
   },
   {
     "sector":"REAL ESTATE AND BUSINESS SERVICE",
     "name": "NASEW REAL ESTATE PLC",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/31.mp4",
     "profile": "",
     "tel": "0114425490/0114426215/0114421234",
     "email": "",
     "website":"",
     "fax":""
   },
  //   one.Koo coffee
  //  oromia industrial park

   {
     "sector":"TRANSPORT, STORAGE AND COMMUNICATION",
     "name": "REFLECT LOGESTICS AND TRANSPORT PLC",
     "logo": "35.jpg",
     "adv_image":"35.jpg",
     "adv_video":"assets/video/business/34.mp4",
     "profile": "",
     "tel": "0114707870/0114708484",
     "email": "",
     "website":"http://www.reflectlogistics.com",
     "fax":""
   },
   {
     "sector":"IMPORT",
     "name": "SIM PLASTICS",
     "logo": "39.jpg",
     "adv_image":"39.jpg",
     "adv_video":"assets/video/business/39.mp4",
     "profile": "",
     "tel": "0116290606",
     "email": "mamiha2001@yahoo.com",
     "website":"http://www.reflectlogistics.com",
     "fax":""
   },
   //riffo
    {
     "sector":"REAL ESTATE AND BUSINESS SERVICE",
     "name": "RSM CONSULTING PLC",
     "logo": "37.jpg",
     "adv_image":"37.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0116393139",
     "email": "",
     "website":"",
     "fax":""
   },
   {
     "sector":"TRANSPORT, STORAGE AND COMMUNICATION",
     "name": "RUHAMA GENERAL FRAME AND GLASS WORK",
     "logo": "38.jpg",
     "adv_image":"38.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0115576895",
     "email": "ruhamaglass@gmail.com",
     "website":"",
     "fax":""
   },
    {
     "sector":"EXPORT",
     "name": "SOAL IMPORT AND EXPORT",
     "logo": "40.jpg",
     "adv_image":"40.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "soalimportandexport@gmail.com",
     "website":"http://www.soalbusiness.com",
     "fax":""
   },
    {
     "sector":"MANUFACTURING",
     "name": "UNIVERSAL PLASTIC FACTORY PLC",
     "logo": "42.jpg",
     "adv_image":"42.jpg",
     "adv_video":"assets/video/business/37.mp4",
     "profile": "",
     "tel": "0116463336/0116463555",
     "email": "elsa.araya@upfethiopia.com",
     "website":"http://upfethiopia.com",
     "fax":""
   },
   {
     "sector":"EXPORT",
     "name": "ZIAD MOHAMED IMPORT AND EXPORT",
     "logo": "43.jpg",
     "adv_image":"43.jpg",
     "adv_video":"",
     "profile": "",
     "tel": "0114701226",
     "email": "info.ziadimportexport@gmail.com",
     "website":"",
     "fax":""
   },
   {
     "sector":"MANUFACTURING",
     "name": "MUGHER CEMENT FACTORY AT CHEMICAL INDUSTRY CORPORATION",
     "logo": "",
     "adv_image":"mugher_cement.png",
     "adv_video":"",
     "profile": "",
     "tel": "0111553648",
     "email": "info.mughercement@gmail.com",
     "website":"www.mughercement.com.et",
     "fax":""
   },
  //  {
  //   "sector":"MANUFACTURING",
  //    "name": "AARTI STEEL PLC",
  //    "logo": "",
  //    "adv_image":"AARTI Steel copy.png",
  //    "adv_video":"",
  //    "profile": "",
  //    "tel": "0116612050",
  //    "email": "aartiethiopia@gmail.com",
  //    "website":"www.mughercement.com.et",
  //    "fax":""
  //  },
    {
    "sector":"IMPORT",
     "name": "ACME ENGINEERING AND TRADING P.L.C",
     "logo": "",
     "adv_image":"ACME Engineering & Trading PLC C copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0111556638",
     "email": "acmeet2003@yahoo.com",
     "website":"http://www.acme-et.com",
     "fax":""
   },
    {
    "sector":"IMPORT",
     "name": "A.G.T.A . P.L.C",
     "logo": "",
     "adv_image":"AGTA PLC C copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "0115581296",
     "email": "commercial@myagta.com",
     "website":"",
     "fax":""
   },
    {
    "sector":"MANUFACTURING",
     "name": "ALE DES INDUSTRY AND TRADE PLC",
     "logo": "",
     "adv_image":"ALE DES copy.png",
     "adv_video":"",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
   
    {
    "sector":"Community, Social And Personal Services",
     "name": "Ik-Ram Automotive SHOW",
     "logo": "",
     "adv_image":"",
     "adv_video":"assets/video/business/ik.mp4",
     "profile": "",
     "tel": "",
     "email": "",
     "website":"",
     "fax":""
   },
   ];

   final data = businessCompanyProfile as List<dynamic>;
   List<dynamic> filteredBusinesses= data;
     if(widget.index == 0){
     filteredBusinesses = data
     .expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("export") ? [element] : [];
  })
  .toList();
  // print(filteredBusinesses);

  }
  if(widget.index == 5){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("agriculture") ? [element] : [];
  }).toList();

  }
  if(widget.index == 2){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("manufacturing") ? [element] : [];
  }).toList();

  }
  if(widget.index == 3){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("construction") ? [element] : [];
  }).toList();

  }
  if(widget.index == 4){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("transport") ? [element] : [];
  }).toList();

  }
  if(widget.index == 1){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("import") ? [element] : [];
  }).toList();

  }
  if(widget.index == 6){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("financial inter") ? [element] : [];
  }).toList();

  }
  if(widget.index == 7){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("community") ? [element] : [];
  }).toList();

  }
  if(widget.index == 8){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("electric") ? [element] : [];
  }).toList();

  }
  if(widget.index == 9){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("hotel") ? [element] : [];
  }).toList();

  }
  if(widget.index == 10){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("wholesale") ? [element] : [];
  }).toList();

  }
  if(widget.index == 11){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("maintennance") ? [element] : [];
  }).toList();

  }
  if(widget.index == 12){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("mining") ? [element] : [];
  }).toList();

  }
  if(widget.index == 13){
     filteredBusinesses = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final companyName = element['sector']?.toString().toLowerCase() ?? '';
    return companyName.startsWith("real estate") ? [element] : [];
  }).toList();

  }
   print(widget.index);
    return   Container(

                  // height:800,
                 width: MediaQuery.of(context).size.width * 1,
                  child: ListView.builder(
  itemCount: filteredBusinesses.length,
  itemBuilder: (context, index) {
    final String icon = filteredBusinesses[index]["logo"].toString();
 Future<String> imageUrlFuture = storeImageInFirebase(filteredBusinesses[index]["logo"].toString());

    // final Map<String,String> list = data[index]; 
    final String name =filteredBusinesses[index]["name"].toString();// Assuming Name has data for each bank

    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CompanyBusiness(detail: filteredBusinesses[index])),
          );
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
                child:  Container(
             width:MediaQuery.of(context).size.width * 0.20,
           child: FutureBuilder<String>(
    future: imageUrlFuture,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Image.network(snapshot.data!); // Use the downloaded URL
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}'); // Handle errors
      }

      // Display a loading indicator while waiting
      return CircularProgressIndicator();
    },
  ),

          ),
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


      
    );
  },
),




                );
  }
   Future<String> storeImageInFirebase(String fileName) async {
  try {
    final storage  = FirebaseStorage.instance.ref();
       final images = storage.child('media');
       final imageRef = images.child(fileName);
       	



       final networkImageUrl = await imageRef.getDownloadURL();
       print(networkImageUrl);
    return networkImageUrl;
  } on FirebaseException catch (e) {
    // Handle potential errors
    print('Error storing image: ${e.code} - ${e.message}');
    return ''; // Or throw an exception for further handling
  }
}

}
