import 'package:flutter/material.dart';
import 'package:foodmania/widgets/search_bar.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<String> _searchResults = [];

  void _onSearchTextChanged(String searchText) {
    // Perform your search operation and populate the search results
    // into the _searchResults list.
    // For this example, we'll just generate some sample search results.
    List<String> results = [];
    for (int i = 0; i < 10; i++) {
      results.add('Search Result ${i + 1}');
    }

    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
              child: SearchBar(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_searchResults[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
