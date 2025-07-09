

import 'package:cart_example_app/models/aisle_model.dart';
import 'package:cart_example_app/models/brand_model.dart';
import 'package:cart_example_app/models/category_model.dart';
import 'package:cart_example_app/models/filter_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/models/sensitive_model.dart';
import 'package:cart_example_app/repositories/cateogory_repository.dart';

class CategoryService implements CategoryRepository {
  final List<CategoryModel> initData = [
    CategoryModel(
        id: "1", name: "Buns & Rolls", quantity: 0, department_id: "1"),
    CategoryModel(id: "2", name: "Bread", quantity: 0, department_id: "1"),
    CategoryModel(
        id: "3",
        name: "Breakfast Breads & Pastries",
        quantity: 0,
        department_id: "1"),
  ];

  final List<Aisle> initAisle = [
    Aisle(aisle_id: "1", name: "Aisle 8", deparment_id: "1"),
    Aisle(aisle_id: "2", name: "Aisle 11", deparment_id: "1"),
    Aisle(aisle_id: "3", name: "Aisle 12", deparment_id: "1"),
    Aisle(aisle_id: "4", name: "Aisle 14", deparment_id: "1"),
  ];

  final List<Brand> initBrand = [
    Brand(brand_id: "1", name: "Lewis", deparment_id: "1"),
    Brand(brand_id: "2", name: "S. Rosen's", deparment_id: "1"),
    Brand(brand_id: "3", name: "Pepperidge Farm®", deparment_id: "1"),
    Brand(brand_id: "4", name: "Brownberry", deparment_id: "1"),
  ];

  final List<Sensitive> initSensitive = [
    Sensitive(sensitive_id: "1", name: "Peanut Free", deparment_id: "1"),
  ];

  final List<Filter> initFilter = [
    Filter(filter_id: "1", name: "Sale Items", deparment_id: "1"),
    Filter(filter_id: "2", name: "New Products", deparment_id: "1"),
  ];

  @override
  Future<List<CategoryModel>> getCategories() {
    return Future.delayed(const Duration(seconds: 1), () => initData);
  }

  @override
  Future<List<CategoryModel>> getCategoriesByDepartment(String departmentId) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initData
            .where((element) => element.department_id == departmentId)
            .toList());
  }

  Future<List<Aisle>> getAisles() {
    return Future.delayed(const Duration(seconds: 1), () => initAisle);
  }

  Future getAislesByDepartment(String departmentId) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initAisle
            .where((element) => element.deparment_id == departmentId)
            .toList());
  }

  Future<List<Brand>> getBrands() {
    return Future.delayed(const Duration(seconds: 1), () => initBrand);
  }

  Future getBrandsByDepartment(String departmentId) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initBrand
            .where((element) => element.deparment_id == departmentId)
            .toList());
  }

  Future<List<Sensitive>> getSensitives() {
    return Future.delayed(const Duration(seconds: 1), () => initSensitive);
  }

  Future getSensitivesByDepartment(String departmentId) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initSensitive
            .where((element) => element.deparment_id == departmentId)
            .toList());
  }

  Future<List<Filter>> getFilters() {
    return Future.delayed(const Duration(seconds: 1), () => initFilter);
  }

  Future getFiltersByDepartment(String departmentId) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initFilter
            .where((element) => element.deparment_id == departmentId)
            .toList());
  }

  Future getCategoriesByProducts(List<Product> products) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initData
            .where((element) => products
                .where((product) => product.category_id == element.id)
                .toList()
                .isNotEmpty)
            .toList());
  }

  Future getAislesByProducts(List<Product> products) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initAisle
            .where((element) => products
                .where((product) => product.aisle_id == element.aisle_id)
                .toList()
                .isNotEmpty)
            .toList());
  }

  Future getBrandsByProducts(List<Product> products) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initBrand
            .where((element) => products
                .where((product) => product.brand_id == element.brand_id)
                .toList()
                .isNotEmpty)
            .toList());
  }

  Future getSensitivesByProducts(List<Product> products) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initSensitive
            .where((element) => products
                .where(
                    (product) => product.sensitivie_id == element.sensitive_id)
                .toList()
                .isNotEmpty)
            .toList());
  }

  Future getFiltersByProducts(List<Product> products) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => initFilter
            .where((element) => products
                .where((product) => product.filter_id == element.filter_id)
                .toList()
                .isNotEmpty)
            .toList());
  }
}
