import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<String>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://meowfacts.herokuapp.com/?lang=por-br'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<String> dataList =
        (data['data'] as List).map((item) => item.toString()).toList();
    return dataList;
  } else {
    throw Exception('Failed to load data');
  }
}
