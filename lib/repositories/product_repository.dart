import '../models/category_model.dart';
import '../models/product_model.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();

  Future<List<Product>> getProductsByCategories(List<CategoryModel> categories);

  Future<List<Product>> getProductsByCategory(int category_id);

  Future<List<Product>> getProductsOffers();

  Future<List<Product>> getProductsBestSelling();
}
