import 'package:flutter/material.dart';
import 'package:foodmania/Services/api.dart';
import 'package:foodmania/widgets/search_bar.dart';

class ListScreen extends StatelessWidget {
  final String? query;
  ListScreen({super.key, this.query});
  List<String> _searchResults = ['query', '2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
              child: SearchBar(
                setRecipe: (newValue) {},
              ),
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
