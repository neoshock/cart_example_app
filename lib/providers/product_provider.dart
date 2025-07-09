import 'package:cart_example_app/models/aisle_model.dart';
import 'package:cart_example_app/models/brand_model.dart';
import 'package:cart_example_app/models/category_model.dart';
import 'package:cart_example_app/models/filter_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/models/sensitive_model.dart';
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
  List<Product> _filteredProducts = [];
  List<Product> get filteredProducts => _filteredProducts;

  List<Product> _otherProducts = [];
  List<Product> get otherProducts => _otherProducts;

  final List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;
  final List<Aisle> _aisles = [];
  List<Aisle> get aisles => _aisles;
  final List<Brand> _brands = [];
  List<Brand> get brands => _brands;
  final List<Sensitive> _sensitives = [];
  List<Sensitive> get sensitives => _sensitives;
  final List<Filter> _filters = [];
  List<Filter> get filters => _filters;

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
    _productsByCategory =
        await productService.getProductsByCategory(categoryId);
    notifyListeners();
  }

  Future<void> loadProductsByCategories(List<CategoryModel> categories) async {
    _productsByCategory =
        await productService.getProductsByCategories(categories);
    notifyListeners();
  }

  void clearProductsByCategory() {
    _productsByCategory = [];
    notifyListeners();
  }

  Future<void> getFilterProdcutsByCategories(CategoryModel category) async {
    categories.add(category);
    _filteredProducts =
        await productService.getProductsByCategories(categories);
    notifyListeners();
  }

  Future<void> addCategory(CategoryModel category) async {
    categories.add(category);
    _filteredProducts =
        await productService.getProductsByCategories(categories);
    notifyListeners();
  }

  Future<void> removeCategory(CategoryModel category) async {
    categories.remove(category);
    if (categories.isEmpty) {
      _filteredProducts = await productService.getProducts();
    } else {
      _filteredProducts =
          await productService.getProductsByCategories(categories);
    }
    notifyListeners();
  }

  Future<void> addAisle(Aisle aisle) async {
    aisles.add(aisle);
    _filteredProducts = await productService.getProductsByAisles(aisles);
    notifyListeners();
  }

  Future<void> removeAisle(Aisle aisle) async {
    aisles.remove(aisle);
    if (aisles.isEmpty) {
      _filteredProducts = await productService.getProducts();
    } else {
      _filteredProducts = await productService.getProductsByAisles(aisles);
    }
    notifyListeners();
  }

  Future<void> addBrand(Brand brand) async {
    brands.add(brand);
    _filteredProducts = await productService.getProductsByBrands(brands);
    notifyListeners();
  }

  Future<void> removeBrand(Brand brand) async {
    brands.remove(brand);
    if (brands.isEmpty) {
      _filteredProducts = await productService.getProducts();
    } else {
      _filteredProducts = await productService.getProductsByBrands(brands);
    }
    notifyListeners();
  }

  Future<void> addSensitive(Sensitive sensitive) async {
    sensitives.add(sensitive);
    _filteredProducts =
        await productService.getProductsBySensitivies(sensitives);
    notifyListeners();
  }

  Future<void> removeSensitive(Sensitive sensitive) async {
    sensitives.remove(sensitive);
    if (sensitives.isEmpty) {
      _filteredProducts = await productService.getProducts();
    } else {
      _filteredProducts =
          await productService.getProductsBySensitivies(sensitives);
    }
    notifyListeners();
  }

  Future<void> addFilter(Filter filter) async {
    filters.add(filter);
    _filteredProducts = await productService.getProductsByFilters(filters);
    notifyListeners();
  }

  Future<void> removeFilter(Filter filter) async {
    filters.remove(filter);
    if (filters.isEmpty) {
      _filteredProducts = await productService.getProducts();
    } else {
      _filteredProducts = await productService.getProductsByFilters(filters);
    }
    notifyListeners();
  }

  Future<void> getLastFiveProducts() async {
    _otherProducts = await productService.getLastFiveProducts();
    notifyListeners();
  }
}
