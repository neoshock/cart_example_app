import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:cart_example_app/models/deparment_model.dart';
import 'package:cart_example_app/repositories/deparment_repository.dart';

class DepartmentService implements DepartmentRepository {
  List<Department> _departments = [];
  bool _isLoaded = false;

  // Método para cargar departamentos desde JSON
  Future<void> _loadDepartmentsFromJson() async {
    if (_isLoaded) return;

    try {
      final String response = await rootBundle.loadString(
        'datasets/departments_json.json',
      );
      final Map<String, dynamic> data = json.decode(response);

      _departments = (data['departments'] as List)
          .map((departmentJson) => Department.fromJson(departmentJson))
          .toList();

      _isLoaded = true;
    } catch (e) {
      print('Error loading departments from JSON: $e');
      _departments = [];
      _isLoaded = true;
    }
  }

  @override
  Future<List<Department>> getDepartments() async {
    await _loadDepartmentsFromJson();
    return Future.delayed(Duration(seconds: 1), () => _departments);
  }
}
