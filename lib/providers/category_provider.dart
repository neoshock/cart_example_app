import 'package:cart_example_app/models/aisle_model.dart';
import 'package:cart_example_app/models/brand_model.dart';
import 'package:cart_example_app/models/category_model.dart';
import 'package:cart_example_app/models/filter_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/models/sensitive_model.dart';
import 'package:cart_example_app/services/category_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CategoryProvider with ChangeNotifier {
  final CategoryService categoryService = CategoryService();
  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;
  List<Aisle> _aisles = [];
  List<Aisle> get aisles => _aisles;
  List<Brand> _brands = [];
  List<Brand> get brands => _brands;
  List<Sensitive> _sensitives = [];
  List<Sensitive> get sensitives => _sensitives;
  List<Filter> _filters = [];
  List<Filter> get filters => _filters;

  Future<void> getCategories() async {
    _categories = await categoryService.getCategories();
    notifyListeners();
  }

  Future<void> getCategoriesByDepartment(String departmentId) async {
    _categories = await categoryService.getCategoriesByDepartment(departmentId);
    notifyListeners();
  }

  Future<void> getAisles() async {
    _aisles = await categoryService.getAisles();
    notifyListeners();
  }

  Future<void> getAislesByDepartment(String departmentId) async {
    _aisles = await categoryService.getAislesByDepartment(departmentId);
    notifyListeners();
  }

  Future<void> getBrands() async {
    _brands = await categoryService.getBrands();
    notifyListeners();
  }

  Future<void> getBrandsByDepartment(String departmentId) async {
    _brands = await categoryService.getBrandsByDepartment(departmentId);
    notifyListeners();
  }

  Future<void> getSensitives() async {
    _sensitives = await categoryService.getSensitives();
    notifyListeners();
  }

  Future<void> getSensitivesByDepartment(String departmentId) async {
    _sensitives = await categoryService.getSensitivesByDepartment(departmentId);
    notifyListeners();
  }

  Future<void> getFilters() async {
    _filters = await categoryService.getFilters();
    notifyListeners();
  }

  Future<void> getFiltersByDepartment(String departmentId) async {
    _filters = await categoryService.getFiltersByDepartment(departmentId);
    notifyListeners();
  }

  void changeCategorySelection(String categoryId) {
    for (var category in _categories) {
      if (category.id == categoryId) {
        category.isSelected = !category.isSelected!;
      }
    }
    notifyListeners();
  }

  void changeAisleSelection(String aisleId) {
    for (var aisle in _aisles) {
      if (aisle.aisle_id == aisleId) {
        aisle.isSelected = !aisle.isSelected!;
      }
    }
    notifyListeners();
  }

  void changeBrandSelection(String brandId) {
    for (var brand in _brands) {
      if (brand.brand_id == brandId) {
        brand.isSelected = !brand.isSelected!;
      }
    }
    notifyListeners();
  }

  void changeSensitiveSelection(String sensitiveId) {
    for (var sensitive in _sensitives) {
      if (sensitive.sensitive_id == sensitiveId) {
        sensitive.isSelected = !sensitive.isSelected!;
      }
    }
    notifyListeners();
  }

  void changeFilterSelection(String filterId) {
    for (var filter in _filters) {
      if (filter.filter_id == filterId) {
        filter.isSelected = !filter.isSelected!;
      }
    }
    notifyListeners();
  }

  Future<void> getCategoriesByProducts(List<Product> products) async {
    _categories = await categoryService.getCategoriesByProducts(products);
    notifyListeners();
  }

  Future<void> getAislesByProducts(List<Product> products) async {
    _aisles = await categoryService.getAislesByProducts(products);
    notifyListeners();
  }

  Future<void> getBrandsByProducts(List<Product> products) async {
    _brands = await categoryService.getBrandsByProducts(products);
    notifyListeners();
  }

  Future<void> getSensitivesByProducts(List<Product> products) async {
    _sensitives = await categoryService.getSensitivesByProducts(products);
    notifyListeners();
  }

  Future<void> getFiltersByProducts(List<Product> products) async {
    _filters = await categoryService.getFiltersByProducts(products);
    notifyListeners();
  }

  Future<void> updateListFilteredProducts(List<Product> products) async {
    if (products.isEmpty) {
      return;
    }
    await getCategoriesByProducts(products);
    await getAislesByProducts(products);
    await getBrandsByProducts(products);
    await getSensitivesByProducts(products);
    await getFiltersByProducts(products);
    notifyListeners();
  }
  
}
