import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3 with a longer name',
    'Another item'
  ];
  String _query = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search List'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _query = value.toLowerCase();
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search Items',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(_filteredItems[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> get _filteredItems => _items
      .where((item) => item.toLowerCase().contains(_query))
      .toList();
}