import 'package:flutter/material.dart';
import 'package:foodmania/screens/list_screen.dart';
import 'package:foodmania/utility/constants.dart';

import '../widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 100.0, 15.0, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Hello Chef,",
                style: TextStyle(
                  color: primary,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "What's on your mind!",
                  style: TextStyle(
                    color: black2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                child: SearchBar(
                  setRecipe: (String? newValue) {
                    recipe = newValue;
                  },
                ),
              ),
              Center(
                child: SearchButton(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton SearchButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //print(recipe);
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ListScreen(query: recipe)));
      },
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          )),
          backgroundColor: const MaterialStatePropertyAll<Color>(primary),
          foregroundColor: const MaterialStatePropertyAll<Color>(secondary)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.0),
        child: Text(
          "Search",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
