import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  _MenuProvider() {
    // cargarData();
  }

  List<dynamic> options = [];

  Future<List<dynamic>> cargarData() async {
    final response = await rootBundle.loadString('data/data.json');

    final Map<String, dynamic> dataMap =
        json.decode(response) as Map<String, dynamic>;

    return options = dataMap['rutas'] as List<dynamic>;
  }
}

final menuProvider = _MenuProvider();
