

import 'package:cart_example_app/models/aisle_model.dart';
import 'package:cart_example_app/models/brand_model.dart';
import 'package:cart_example_app/models/category_model.dart';
import 'package:cart_example_app/models/filter_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/models/sensitive_model.dart';
import 'package:cart_example_app/repositories/product_repository.dart';

class ProductService implements ProductRepository {
  final List<Product> products = [
    Product(
        product_id: "1",
        name: "Baked Kosher Sufganiot",
        price: 5.99,
        unit: "4 ct.pkg",
        image: "assets/imgs/productsImgs/65444.jpg",
        aisle_id: "1",
        bestSelling: true,
        isOffer: false,
        offerPrice: 0.0,
        category_id: "1",
        filter_id: "1",
        sensitivie_id: "1",
        brand_id: "1",
        quantity: 5),
    Product(
      product_id: "2",
      name: "Cranberry Orange Muffins",
      price: 2.49,
      unit: "2 ct.",
      image: "assets/imgs/productsImgs/64337.jpg",
      aisle_id: "1",
      bestSelling: true,
      isOffer: false,
      offerPrice: 0.0,
      category_id: "2",
      filter_id: "1",
      sensitivie_id: "1",
      brand_id: "1",
      quantity: 5,
    ),
    Product(
      product_id: "3",
      name: "Chocolate Chip Cookies",
      price: 3.99,
      unit: "2 ct.",
      image: "assets/imgs/productsImgs/64293.jpg",
      aisle_id: "1",
      bestSelling: true,
      isOffer: false,
      offerPrice: 0.0,
      category_id: "2",
      filter_id: "1",
      sensitivie_id: "1",
      brand_id: "1",
      quantity: 5,
    ),
    Product(
      product_id: "4",
      name: "Fresh Baked Strawberry Muffins",
      price: 2.49,
      unit: "2 ct.",
      image: "assets/imgs/productsImgs/64253.jpg",
      aisle_id: "1",
      bestSelling: true,
      isOffer: false,
      offerPrice: 0.0,
      category_id: "2",
      filter_id: "1",
      sensitivie_id: "1",
      brand_id: "1",
      quantity: 5,
    ),
    Product(
      product_id: "5",
      name: "Banana Nut Muffins",
      price: 2.49,
      unit: "2 ct.",
      image: "assets/imgs/productsImgs/63507.jpg",
      aisle_id: "1",
      bestSelling: false,
      isOffer: true,
      offerPrice: 1.99,
      category_id: "1",
      filter_id: "1",
      sensitivie_id: "1",
      brand_id: "1",
      quantity: 5,
    ),
    Product(
      product_id: "6",
      name: "Jackfruit Co Jackfruit Lightly Seaso",
      price: 6.79,
      unit: "9 oz",
      image: "assets/imgs/productsImgs/81874.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: true,
      offerPrice: 6.99,
      category_id: "2",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "7",
      name: "Phils Fresh Eggs Grade A Medium",
      price: 4.29,
      unit: "9 oz",
      image: "assets/imgs/productsImgs/80956.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: true,
      offerPrice: 3.99,
      category_id: "2",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "8",
      name: "Nellies Grade A Large Brown Free Range Eggs",
      price: 4.29,
      unit: "12 cnt",
      image: "assets/imgs/productsImgs/80956.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: true,
      offerPrice: 3.99,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "9",
      name: "Nellies Grade A Large Brown Free Range Eggs",
      price: 4.29,
      unit: "12 cnt",
      image: "assets/imgs/productsImgs/80956.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: true,
      offerPrice: 3.99,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "10",
      name: "Nellies Grade A Large Brown Free Range Eggs",
      price: 4.29,
      unit: "12 cnt",
      image: "assets/imgs/productsImgs/80956.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: true,
      offerPrice: 3.99,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "11",
      name: "Nellies Grade A Large Brown Free Range Eggs",
      price: 4.29,
      unit: "12 cnt",
      image: "assets/imgs/productsImgs/80956.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: true,
      offerPrice: 3.99,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "12",
      name: "Nellies Grade A Large Brown Free Range Eggs",
      price: 4.29,
      unit: "12 cnt",
      image: "assets/imgs/productsImgs/80956.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: true,
      offerPrice: 3.99,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "13",
      name: "Organic Mango",
      price: 1.49,
      unit: "each",
      image: "assets/imgs/productsImgs/P1.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: false,
      offerPrice: 0,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "14",
      name: "Sweet Blueberries",
      price: 2.00,
      unit: "pint",
      image: "assets/imgs/productsImgs/P2.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: false,
      offerPrice: 0,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "15",
      name: "Org Butternut Squash",
      price: 0.99,
      unit: "per lb.",
      image: "assets/imgs/productsImgs/P3.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: false,
      offerPrice: 0,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "16",
      name: "Sweet Red Bananas",
      price: 1.49,
      unit: "per lb.",
      image: "assets/imgs/productsImgs/P4.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: false,
      offerPrice: 0,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "17",
      name: "Organic Abate Fetel Pears",
      price: 1.99,
      unit: "32 oz.",
      image: "assets/imgs/productsImgs/P5.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: false,
      offerPrice: 0,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
    Product(
      product_id: "18",
      name: "Censea Cooked Shrimp 21/25",
      price: 21.98,
      unit: "16 oz.",
      image: "assets/imgs/productsImgs/S1.jpg",
      aisle_id: "2",
      bestSelling: false,
      isOffer: false,
      offerPrice: 0,
      category_id: "1",
      filter_id: "2",
      sensitivie_id: "1",
      brand_id: "2",
      quantity: 5,
    ),
  ];

  @override
  Future<List<Product>> getProducts() {
    return Future.delayed(Duration(seconds: 1), () => products);
  }

  @override
  Future<List<Product>> getProductsByCategories(
      List<CategoryModel> categories) {
    List<Product> productsByCategories = [];
    for (var category in categories) {
      for (var product in products) {
        if (product.category_id == category.id) {
          productsByCategories.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByCategories);
  }

  @override
  Future<List<Product>> getProductsByCategory(int categoryId) {
    List<Product> productsByCategory = [];
    for (var product in products) {
      if (product.category_id == categoryId.toString()) {
        productsByCategory.add(product);
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByCategory);
  }

  @override
  Future<List<Product>> getProductsBestSelling() {
    List<Product> productsBestSelling = [];
    for (var product in products) {
      if (product.bestSelling == true) {
        productsBestSelling.add(product);
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsBestSelling);
  }

  @override
  Future<List<Product>> getProductsOffers() {
    List<Product> productsOffers = [];
    for (var product in products) {
      if (product.isOffer == true) {
        productsOffers.add(product);
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsOffers);
  }

  Future<List<Product>> getProductsByAisles(List<Aisle> aisles) {
    List<Product> productsByAisles = [];
    for (var aisle in aisles) {
      for (var product in products) {
        if (product.aisle_id == aisle.aisle_id) {
          productsByAisles.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByAisles);
  }

  Future<List<Product>> getProductsByBrands(List<Brand> brands) {
    List<Product> productsByBrands = [];
    for (var brand in brands) {
      for (var product in products) {
        if (product.brand_id == brand.brand_id) {
          productsByBrands.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByBrands);
  }

  Future<List<Product>> getProductsByFilters(List<Filter> filters) {
    List<Product> productsByFilters = [];
    for (var filter in filters) {
      for (var product in products) {
        if (product.filter_id == filter.filter_id) {
          productsByFilters.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsByFilters);
  }

  Future<List<Product>> getProductsBySensitivies(List<Sensitive> sensitivies) {
    List<Product> productsBySensitivies = [];
    for (var sensitivie in sensitivies) {
      for (var product in products) {
        if (product.sensitivie_id == sensitivie.sensitive_id) {
          productsBySensitivies.add(product);
        }
      }
    }
    return Future.delayed(Duration(seconds: 1), () => productsBySensitivies);
  }

  Future<List<Product>> getLastFiveProducts() {
    List<Product> lastFiveProducts = [];
    lastFiveProducts = products.sublist(products.length - 5, products.length);
    return Future.delayed(Duration(seconds: 1), () => lastFiveProducts);
  }
}
