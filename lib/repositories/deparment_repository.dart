import '../models/deparment_model.dart';

abstract class DepartmentRepository {
  Future<List<Department>> getDepartments();
}
