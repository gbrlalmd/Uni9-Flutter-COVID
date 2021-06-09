import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class WebAccessor {
  Future<Summary> fetchSummary() async {
    final response =
        await http.get(Uri.parse('https://api.covid19api.com/summary'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Summary.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load summary');
    }
  }
}

class Summary {
  final List<CountryObject> countries;

  Summary({required this.countries});

  factory Summary.fromJson(Map<String, dynamic> json) {
    return new Summary(
        countries: (json['Countries'] as List)
            .map((i) => CountryObject.fromJson(i))
            .toList());
  }
}

class CountryObject {
  final String country;
  final String countryCode;
  final int totalConfirmed;

  CountryObject(
      {required this.countryCode,
      required this.country,
      required this.totalConfirmed});

  factory CountryObject.fromJson(Map<String, dynamic> json) {
    return new CountryObject(
        countryCode: json['CountryCode'],
        country: json['Country'],
        totalConfirmed: json['TotalConfirmed']);
  }
}
