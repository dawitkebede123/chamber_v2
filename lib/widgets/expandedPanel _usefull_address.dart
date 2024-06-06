import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


  

class ExpandedPanelUseFullAddress extends StatefulWidget {
  final List<Map<String,dynamic>> data;
  const ExpandedPanelUseFullAddress({super.key,required this.data});

  @override
  State<ExpandedPanelUseFullAddress> createState() => _ExpandedPanelUseFullAddressState();
}

class _ExpandedPanelUseFullAddressState extends State<ExpandedPanelUseFullAddress> {
  // final List<Map<String,dynamic>> _data =[
  //   {
  //     "title":"item 1",
  //   "content": "content 1"
  //   },
  //    {
  //     "title":"item 2",
  //   "content": "content 2"
  //    }
   

  // ];
  // {
  //   return Item(
  //     headerText: 'Item $index',
  //     expandedText: 'This is item number $index',
  //   );
  // });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.data.length,
      itemBuilder: (_, index){
        final item = widget.data[index];
        return Card(
          
          color: const Color.fromARGB(255,229,234,232),
          // elevation: 4,
          child: ExpansionTile(
            collapsedShape: RoundedRectangleBorder(side: BorderSide.none),
  shape: RoundedRectangleBorder(side: BorderSide.none),
            title: Text(item['title'],style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),),),
            children: [
              Container(
                width:double.infinity,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(item['content'],textAlign: TextAlign.justify,),
                )
                
                )
            ],

            ),
        );
      },
      );
    // SingleChildScrollView(
    //   child: ExpansionPanelList(
    //     expansionCallback: (int index, bool isExpanded) {
    //       setState(() {
    //         _data[index].isExpanded = !isExpanded;
    //       });
    //     },
    //     // children: _data.map<ExpansionPanel>((Item item) => _buildItemPanel(item)).toList(),
    //   ),
    // );
  }

//   ExpansionPanel _buildItemPanel(Item item) {
//   return ExpansionPanel(
//     headerBuilder: (context, isExpanded) => ListTile(
//       title: Text(item.headerText),
//       trailing: IconButton(
//         icon: Icon(
//           isExpanded ? Icons.abc : Icons.abc_sharp,
//           color: Colors.black,
//         ),
//         onPressed: () => setState(() => item.isExpanded = !isExpanded),
//       ),
//     ),
//     body:
//      AnimatedSize(
//       duration: Duration(milliseconds: 200),
//       child: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Text(item.expandedText),
//       ),
//       curve: Curves.easeInOut,
//     ),
//     isExpanded: item.isExpanded,
//   );
// }

}
