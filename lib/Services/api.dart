import 'package:http/http.dart' as http;
import 'dart:convert';

class APIQuery {
  final String? query;
  APIQuery({this.query});

  Future<dynamic> getResponse() async {
    Uri url = Uri.parse(
        "https://api.spoonacular.com/recipes/complexSearch?query=${query!}&number=100&apiKey=fa2a99583d3142ababb226d02e196cf0");
    var response = await http.get(url);
    var decodedResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      //print(decodeResponse['main']);
      return decodedResponse;
    } else {
      print(response.statusCode);
    }
  }
}

class APIItem {
  final int? id;
  APIItem({this.id});

  Future<dynamic> getInfo() async {
    Uri url = Uri.parse(
        "https://api.spoonacular.com/recipes/${id!}/information?includeNutrition=false&apiKey=fa2a99583d3142ababb226d02e196cf0");
    var response = await http.get(url);
    var decodedResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      //print(decodeResponse['main']);
      return decodedResponse;
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getSteps() async {
    Uri url = Uri.parse(
        "https://api.spoonacular.com/recipes/${id!}/analyzedInstructions&apiKey=fa2a99583d3142ababb226d02e196cf0");
    var response = await http.get(url);
    var decodedResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      //print(decodeResponse['main']);
      return decodedResponse;
    } else {
      print(response.statusCode);
    }
  }
}
