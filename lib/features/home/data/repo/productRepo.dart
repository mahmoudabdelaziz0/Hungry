import 'package:huungry/core/network/api_service.dart';
import '../../models/productModel.dart';
import '../../models/toppingsModel.dart';

class ProductRepo {
  final ApiService _apiService = ApiService();

  /// get products
  Future<List<ProductModel>> getProducts () async {
    try {
      final response = await _apiService.get('/products');
      return (response['data'] as List)
          .map((product) => ProductModel.fromJson(product))
          .toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  /// get Toppings
  Future<List<ToppingModel>> getToppings () async{
    try {
      final response = await _apiService.get('/toppings');
      return (response ['data'] as List)
          .map((topping)  => ToppingModel.fromJson(topping))
          .toList();
    } catch (e) {
      print(e.toString());
      return[];
    }
  }

  /// get Options
  Future<List<ToppingModel>> getOptions  () async{
    try {
      final response = await _apiService.get('/side-options');
      return (response ['data'] as List)
          .map((topping)  => ToppingModel.fromJson(topping))
          .toList();
    } catch (e) {
      print(e.toString());
      return[];
    }
  }

  /// search products by query using the /products endpoint with a `search` query param
  Future<List<ProductModel>> searchProducts(String query) async {
    try {
      final encoded = Uri.encodeQueryComponent(query);
      final response = await _apiService.get('/products?search=$encoded');
      return (response['data'] as List)
          .map((product) => ProductModel.fromJson(product))
          .toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

/// search

///  category

}