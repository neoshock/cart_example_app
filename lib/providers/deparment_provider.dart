import 'package:cart_example_app/models/deparment_model.dart';
import 'package:cart_example_app/services/deparment_service.dart';
import 'package:flutter/cupertino.dart';

class DepartmentProvider with ChangeNotifier {
  final DepartmentService _departmentService = DepartmentService();
  List<Department> _deparments = [];
  List<Department> get departments => _deparments;

  Future<void> loadDepartments() async {
    _deparments = await _departmentService.getDepartments();
    notifyListeners();
  }
}
