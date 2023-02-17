import 'package:flutter/material.dart';
import 'package:foodmania/constants/constants.dart';

class HomeScreen extends StatelessWidget {
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
              Text(
                "Hello Chef,",
                style: TextStyle(
                  color: primary,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                child: Container(
                  decoration: BoxDecoration(
                    color: black1,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextField(
                    cursorColor: black2,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: black1,
                        prefixIcon: Icon(Icons.search, color: black2),
                        hintText: "'Pasta..', 'Biryani..', ..",
                        hintStyle: TextStyle(color: black2, fontSize: 20.0)),
                    onChanged: (newValue) {
                      recipe = newValue;
                    },
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text(
                      "Search",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      )),
                      backgroundColor: MaterialStatePropertyAll<Color>(primary),
                      foregroundColor:
                          MaterialStatePropertyAll<Color>(secondary)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
