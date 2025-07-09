import '../models/category_model.dart';

abstract class CategoryRepository {
  Future<List<CategoryModel>> getCategories();

  Future<List<CategoryModel>> getCategoriesByDepartment(String departmentId);
}
