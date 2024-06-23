import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductController {
  Future<List<Map<String, dynamic>>> fetchProducts() async {
    var url = Uri.parse('https://fakestoreapi.com/products');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
