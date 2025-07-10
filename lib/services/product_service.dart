import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:cart_example_app/models/aisle_model.dart';
import 'package:cart_example_app/models/brand_model.dart';
import 'package:cart_example_app/models/category_model.dart';
import 'package:cart_example_app/models/filter_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/models/sensitive_model.dart';
import 'package:cart_example_app/repositories/product_repository.dart';

class ProductService implements ProductRepository {
  List<Product> _products = [];
  bool _isLoaded = false;

  // Método para cargar productos desde JSON
  Future<void> _loadProductsFromJson() async {
    if (_isLoaded) return;

    try {
      final String response = await rootBundle.loadString(
        'datasets/products_json.json',
      );
      final Map<String, dynamic> data = json.decode(response);
      _products = (data['products'] as List)
          .map((productJson) => Product.fromJson(productJson))
          .toList();

      _isLoaded = true;
    } catch (e) {
      print('Error loading products from JSON: $e');
      _products = [];
      _isLoaded = true;
    }
  }

  @override
  Future<List<Product>> getProducts() async {
    await _loadProductsFromJson();
    return Future.delayed(Duration(seconds: 1), () => _products);
  }

  @override
  Future<List<Product>> getProductsByCategories(
    List<CategoryModel> categories,
  ) async {
    await _loadProductsFromJson();
    List<Product> productsByCategories = [];
    for (var category in categories) {
      for (var product in _products) {
        if (product.category_id == category.id) {
          productsByCategories.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByCategories);
  }

  @override
  Future<List<Product>> getProductsByCategory(int categoryId) async {
    await _loadProductsFromJson();
    List<Product> productsByCategory = [];
    for (var product in _products) {
      if (product.category_id == categoryId.toString()) {
        productsByCategory.add(product);
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByCategory);
  }

  @override
  Future<List<Product>> getProductsBestSelling() async {
    await _loadProductsFromJson();
    List<Product> productsBestSelling = [];
    for (var product in _products) {
      if (product.bestSelling == true) {
        productsBestSelling.add(product);
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsBestSelling);
  }

  @override
  Future<List<Product>> getProductsOffers() async {
    await _loadProductsFromJson();
    List<Product> productsOffers = [];
    for (var product in _products) {
      if (product.isOffer == true) {
        productsOffers.add(product);
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsOffers);
  }

  Future<List<Product>> getProductsByAisles(List<Aisle> aisles) async {
    await _loadProductsFromJson();
    List<Product> productsByAisles = [];
    for (var aisle in aisles) {
      for (var product in _products) {
        if (product.aisle_id == aisle.aisle_id) {
          productsByAisles.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByAisles);
  }

  Future<List<Product>> getProductsByBrands(List<Brand> brands) async {
    await _loadProductsFromJson();
    List<Product> productsByBrands = [];
    for (var brand in brands) {
      for (var product in _products) {
        if (product.brand_id == brand.brand_id) {
          productsByBrands.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByBrands);
  }

  Future<List<Product>> getProductsByFilters(List<Filter> filters) async {
    await _loadProductsFromJson();
    List<Product> productsByFilters = [];
    for (var filter in filters) {
      for (var product in _products) {
        if (product.filter_id == filter.filter_id) {
          productsByFilters.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByFilters);
  }

  Future<List<Product>> getProductsBySensitivies(
    List<Sensitive> sensitivies,
  ) async {
    await _loadProductsFromJson();
    List<Product> productsBySensitivies = [];
    for (var sensitivie in sensitivies) {
      for (var product in _products) {
        if (product.sensitivie_id == sensitivie.sensitive_id) {
          productsBySensitivies.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsBySensitivies);
  }

  Future<List<Product>> getLastFiveProducts() async {
    await _loadProductsFromJson();
    List<Product> lastFiveProducts = [];
    if (_products.length >= 5) {
      lastFiveProducts = _products.sublist(
        _products.length - 5,
        _products.length,
      );
    } else {
      lastFiveProducts = _products;
    }
    return Future.delayed(Duration(seconds: 1), () => lastFiveProducts);
  }
}
