import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:cart_example_app/models/aisle_model.dart';
import 'package:cart_example_app/models/brand_model.dart';
import 'package:cart_example_app/models/category_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/models/sensitive_model.dart';
import 'package:cart_example_app/repositories/cateogory_repository.dart';

class CategoryService implements CategoryRepository {
  Map<String, dynamic>? _cachedData;

  Future<Map<String, dynamic>> _loadData() async {
    if (_cachedData != null) {
      return _cachedData!;
    }

    final String response = await rootBundle.loadString(
      'datasets/category_data_json.json',
    );
    _cachedData = json.decode(response);
    return _cachedData!;
  }

  List<CategoryModel> _parseCategories(List<dynamic> categoriesJson) {
    return categoriesJson
        .map(
          (json) => CategoryModel(
            id: json['id'],
            name: json['name'],
            quantity: json['quantity'],
            department_id: json['department_id'],
          ),
        )
        .toList();
  }

  List<Aisle> _parseAisles(List<dynamic> aislesJson) {
    return aislesJson
        .map(
          (json) => Aisle(
            aisle_id: json['aisle_id'],
            name: json['name'],
            deparment_id: json['deparment_id'],
          ),
        )
        .toList();
  }

  List<Brand> _parseBrands(List<dynamic> brandsJson) {
    return brandsJson
        .map(
          (json) => Brand(
            brand_id: json['brand_id'],
            name: json['name'],
            deparment_id: json['deparment_id'],
          ),
        )
        .toList();
  }

  List<Sensitive> _parseSensitives(List<dynamic> sensitivesJson) {
    return sensitivesJson
        .map(
          (json) => Sensitive(
            sensitive_id: json['sensitive_id'],
            name: json['name'],
            deparment_id: json['deparment_id'],
          ),
        )
        .toList();
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final data = await _loadData();
    return _parseCategories(data['categories']);
  }

  @override
  Future<List<CategoryModel>> getCategoriesByDepartment(
    String departmentId,
  ) async {
    final categories = await getCategories();
    return categories
        .where((element) => element.department_id == departmentId)
        .toList();
  }

  Future<List<Aisle>> getAisles() async {
    final data = await _loadData();
    return _parseAisles(data['aisles']);
  }

  Future<List<Aisle>> getAislesByDepartment(String departmentId) async {
    final aisles = await getAisles();
    return aisles
        .where((element) => element.deparment_id == departmentId)
        .toList();
  }

  Future<List<Brand>> getBrands() async {
    final data = await _loadData();
    return _parseBrands(data['brands']);
  }

  Future<List<Brand>> getBrandsByDepartment(String departmentId) async {
    final brands = await getBrands();
    return brands
        .where((element) => element.deparment_id == departmentId)
        .toList();
  }

  Future<List<Sensitive>> getSensitives() async {
    final data = await _loadData();
    return _parseSensitives(data['sensitives']);
  }

  Future<List<Sensitive>> getSensitivesByDepartment(String departmentId) async {
    final sensitives = await getSensitives();
    return sensitives
        .where((element) => element.deparment_id == departmentId)
        .toList();
  }

  Future<List<CategoryModel>> getCategoriesByProducts(
    List<Product> products,
  ) async {
    final categories = await getCategories();
    return categories
        .where(
          (element) => products
              .where((product) => product.category_id == element.id)
              .toList()
              .isNotEmpty,
        )
        .toList();
  }

  Future<List<Aisle>> getAislesByProducts(List<Product> products) async {
    final aisles = await getAisles();
    return aisles
        .where(
          (element) => products
              .where((product) => product.aisle_id == element.aisle_id)
              .toList()
              .isNotEmpty,
        )
        .toList();
  }

  Future<List<Brand>> getBrandsByProducts(List<Product> products) async {
    final brands = await getBrands();
    return brands
        .where(
          (element) => products
              .where((product) => product.brand_id == element.brand_id)
              .toList()
              .isNotEmpty,
        )
        .toList();
  }

  Future<List<Sensitive>> getSensitivesByProducts(
    List<Product> products,
  ) async {
    final sensitives = await getSensitives();
    return sensitives
        .where(
          (element) => products
              .where((product) => product.sensitivie_id == element.sensitive_id)
              .toList()
              .isNotEmpty,
        )
        .toList();
  }
}
