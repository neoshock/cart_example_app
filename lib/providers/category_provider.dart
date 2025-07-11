import 'package:cart_example_app/models/aisle_model.dart';
import 'package:cart_example_app/models/brand_model.dart';
import 'package:cart_example_app/models/category_model.dart';
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
}
