import 'package:flutter/material.dart';

import '../utility/constants.dart';

class SearchBar extends StatelessWidget {
  final Function setRecipe;
  SearchBar({super.key, required this.setRecipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: black1,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        cursorColor: black2,
        decoration: const InputDecoration(
            border: InputBorder.none,
            fillColor: black1,
            prefixIcon: Icon(Icons.search, color: black2),
            hintText: "'Pasta..', 'Biryani..', ..",
            hintStyle: TextStyle(color: black2, fontSize: 20.0)),
        onChanged: (newValue) {
          setRecipe(newValue);
        },
      ),
    );
  }
}
