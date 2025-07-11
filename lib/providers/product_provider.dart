import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/services/product_service.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider with ChangeNotifier {
  final ProductService productService = ProductService();

  List<Product> _products = [];
  List<Product> get products => _products;
  List<Product> _offers = [];
  List<Product> get offers => _offers;
  List<Product> _bestSelling = [];
  List<Product> get bestSelling => _bestSelling;
  List<Product> _productsByCategory = [];
  List<Product> get productsByCategory => _productsByCategory;
  List<Product> _otherProducts = [];
  List<Product> get otherProducts => _otherProducts;

  Future<void> loadProducts() async {
    _products = await productService.getProducts();
    notifyListeners();
  }

  Future<void> loadBestSelling() async {
    _bestSelling = await productService.getProductsBestSelling();
    notifyListeners();
  }

  Future<void> loadExclusiveOffers() async {
    _offers = await productService.getProductsOffers();
    notifyListeners();
  }

  Future<void> loadProductsByCategory(int categoryId) async {
    _productsByCategory = await productService.getProductsByCategory(
      categoryId,
    );
    notifyListeners();
  }

  void clearProductsByCategory() {
    _productsByCategory = [];
    notifyListeners();
  }

  Future<void> getLastFiveProducts() async {
    _otherProducts = await productService.getLastFiveProducts();
    notifyListeners();
  }
}
