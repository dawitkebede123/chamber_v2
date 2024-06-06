import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:chamber_of_commerce/pages/user/Company_detail.dart';
import 'package:chamber_of_commerce/widgets/SearchMoreIcon.dart';

class SearchFieldBusiness extends StatefulWidget {
  const SearchFieldBusiness({Key? key}) : super(key: key);

  @override
  State<SearchFieldBusiness> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchFieldBusiness> {
  final TextEditingController _searchController = TextEditingController();
  Stream<List<dynamic>>? _searchResultsStream;
  bool _showListView = false;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    if (_searchController.text.isEmpty) {
      setState(() {
        _searchResultsStream = null;
        _showListView = false;
      });
    } else {
      setState(() {
        _searchResultsStream = FirebaseDatabase.instance
            .ref('Query7')
            .orderByChild('Account Name')
            .startAfter(_searchController.text.toUpperCase())
            .limitToFirst(1)
            .onValue
            .asBroadcastStream()
            .map((event) => _mapSnapshotToCompanyList(event.snapshot));
        _showListView = true;
      });
    }
  }

  List<dynamic> _mapSnapshotToCompanyList(DataSnapshot snapshot) {
    // Handle both Map and List data structures
    if (snapshot.value is Map) {
      final Map<dynamic, dynamic> entries = Map.from(snapshot.value as Map);
      final List<dynamic> companies = [];
      entries.forEach((key, value) {
        companies.add(value);
      });
      return companies;
    } else if (snapshot.value is List) {
      return snapshot.value as List<dynamic>; // Assuming each item in the list represents a company
    } else {
      print('Unexpected data type received: ${snapshot.value}');
      return []; // Empty list if unexpected data type
    }
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

  // ... remaining widget build methods (unchanged)



  Widget _buildSearchTextField() {
    return  Container(
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
          hintText: 'Search business',
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
    return StreamBuilder<List<dynamic>>(
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

  Widget _buildListView(List<dynamic> companies) {
    if (companies.isEmpty) {
      return Center(child: Text('No companies found.'));
    }
    return ListView.builder(
      itemCount: companies.length,
      itemBuilder: (context, index) {
        final company = companies[index];
        final name = company['Account Name'];
        return ListTile(
          title: Text(name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CompanyDetail(data: company),
              ),
            );
          },
        );
      },
    );
  }
}
