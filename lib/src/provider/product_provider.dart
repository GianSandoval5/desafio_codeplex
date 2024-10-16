import 'package:desafio_codeplex/src/models/product.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = true;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  Future<void> fetchProducts() async {
    final box = Hive.box('productsBox');
    _isLoading = true;
    notifyListeners(); // Notificar a los listeners que el estado ha cambiado

    try {
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        _products = jsonData.map((json) => Product.fromJson(json)).toList();

        // Guardar en Hive
        await box.clear(); // Limpiar los datos antiguos
        for (var product in _products) {
          await box.add(product.toJson());
        }
      }
    } catch (e) {
      // Si falla la conexión, cargar datos de Hive
      final savedProducts = box.values.toList();
      _products = savedProducts.map((json) => Product.fromJson(json)).toList();
    } finally {
      _isLoading = false;
      notifyListeners(); // Notificar a los listeners que la carga ha terminado
    }
  }
}
