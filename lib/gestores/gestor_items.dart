import 'dart:convert';

import 'package:home_manager_stock_app/models/item.dart';
import 'package:home_manager_stock_app/utils/constantes.dart';

import 'package:http/http.dart' as http;

class GestorItems {
  
  static String apiUrl = Constantes.apiUrl;

//GET ITEM LIST

  Future<List<Item>> getListaItems() async {
    final response = await http.get(Uri.parse('$apiUrl/get-items'));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => Item.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load items');
    }
  }
}
