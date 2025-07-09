

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

  // static List<Product> fetchAll() {
  //   return [
  //     Product("1", 'assets/imgs/productsImgs/65444.jpg', '4 ct.pkg',
  //         'Baked Kosher Sufganiot', '\$5.99', '1'),
  //     Product("2", 'assets/imgs/productsImgs/64337.jpg', '2 ct.',
  //         'Cranberry Orange Muffins', '\$2.49', '1'),
  //     Product("3", 'assets/imgs/productsImgs/64293.jpg', '2 ct.pkg',
  //         'Chocolate Chips Muffins', '\$2.49', '1'),
  //     Product("4", 'assets/imgs/productsImgs/64253.jpg', '2 ct.',
  //         'Fresh Baked Strawberry Muffins', '\$2.49', '1'),
  //     Product("5", 'assets/imgs/productsImgs/63507.jpg', '2 ct.',
  //         'Banana Nut Muffins', '\$2.49', '1'),
  //     Product("6", 'assets/imgs/productsImgs/81874.jpg', '9 oz',
  //         'Jackfruit Co Jackfruit Lightly Seaso', '\$6.79', '2'),
  //     Product("7", 'assets/imgs/productsImgs/81308.jpg', '12 ct.pk',
  //         'Phils Fresh Eggs Grade A Medium', '\$4.29', '2'),
  //     Product("8", 'assets/imgs/productsImgs/80956.jpg', '12 cnt',
  //         'Nellies Grade A Large Brown Free Range Eggs', '\$5.29', '2'),
  //     Product("9", 'assets/imgs/productsImgs/80568.jpg', '16 oz.',
  //         'GTs Synergy Raw Passionberry Bliss Kombucha', '\$4.99', '2'),
  //     Product("10", 'assets/imgs/productsImgs/80239.jpg', '16 oz.',
  //         'Riscossa Bucatini Pasta', '\$1.99', '2'),
  //     Product("11", 'assets/imgs/productsImgs/D1.jpg', '1 kg.',
  //         'Zigmas Herring Fillets', '\$13.99', '3'),
  //     Product("12", 'assets/imgs/productsImgs/D2.jpg', 'per lb.',
  //         'Blackcurrant', '\$5.99/LB', '3'),
  //     Product("13", 'assets/imgs/productsImgs/D3.jpg', 'per lb.',
  //         'Hot Smoked Rainbow Trout', '\$9.99/LB', '3'),
  //     Product("14", 'assets/imgs/productsImgs/D4.jpg', 'per lb.',
  //         'Banner Trimmed Nova Lox', '\$28.99/LB', '3'),
  //     Product("15", 'assets/imgs/productsImgs/D5.jpg', 'per lb.',
  //         'Gray Lox Strim', '\$4.99/LB', '3'),
  //     Product("16", 'assets/imgs/productsImgs/no-image.jpeg', 'each', 'Picks',
  //         '\$0.79', '4'),
  //     Product("17", 'assets/imgs/productsImgs/no-image.jpeg', 'each',
  //         'Poinsettia', '\$6.99', '4'),
  //     Product("18", 'assets/imgs/productsImgs/no-image.jpeg', 'each',
  //         'Fresh Arrangement', '\$32.99', '4'),
  //     Product("19", 'assets/imgs/productsImgs/no-image.jpeg', 'each', 'B Plant',
  //         '\$59.99', '4'),
  //     Product("20", 'assets/imgs/productsImgs/no-image.jpeg', 'each',
  //         'Stuffed Animal', '\$15.99', '4'),
  //     Product("21", 'assets/imgs/productsImgs/F1.jpg', '2 lb',
  //         'Cooked Perfect Meatballs Flame Broiled Italian', '\$9.99', '5'),
  //     Product("22", 'assets/imgs/productsImgs/F2.jpg', '14.5 oz',
  //         'Bosco Sticks Breadsticks', '\$4.99', '5'),
  //     Product("23", 'assets/imgs/productsImgs/F3.jpg', '14 oz',
  //         'Chiquita Juice & Smoothie Mango', '\$2.29', '5'),
  //     Product("24", 'assets/imgs/productsImgs/F4.jpg', '1.75 qts',
  //         'Edys Ice Cream Light Fudge Tracks', '\$5.79', '5'),
  //     Product("25", 'assets/imgs/productsImgs/F5.jpg', '40 oz.',
  //         "Nature's Fruit Mix Tropical", '\$16.49', '5'),
  //     Product("21", 'assets/imgs/productsImgs/G1.jpg', '8.8 oz',
  //         'La Perruche Pure Cane Roughcut Cubes', '\$5.75', '6'),
  //     Product("22", 'assets/imgs/productsImgs/G2.jpg', '6 pk', 'Pepsi Products',
  //         '\$4.99', '6'),
  //     Product("23", 'assets/imgs/productsImgs/G3.jpg', '15 oz.',
  //         'A G Veg Bean Sprouts', '\$3.75', '6'),
  //     Product("24", 'assets/imgs/productsImgs/G4.jpg', '6 pk.',
  //         'Pepsi Products', '\$4.99', '6'),
  //     Product("25", 'assets/imgs/productsImgs/G5.jpg', '8.8 oz', "Cc Crackers",
  //         '\$5.95', '6'),
  //     Product("21", 'assets/imgs/productsImgs/M1.jpg', 'per lb.',
  //         'Frozen Butterball Turkey', '\$1.99/LB', '7'),
  //     Product("22", 'assets/imgs/productsImgs/M2.jpg', 'per lb.',
  //         'Miller Organic Chicken Wings', '\$6.69/LB', '7'),
  //     Product("23", 'assets/imgs/productsImgs/M3.jpg', 'per lb.',
  //         'Miller Organic Whole Leg Quarters', '\$6.49/LB', '7'),
  //     Product("24", 'assets/imgs/productsImgs/M4.jpg', 'per lb.',
  //         'Miller Organic Whole Fryer', '\$6.69/LB', '7'),
  //     Product("25", 'assets/imgs/productsImgs/M5.jpg', 'per lb.',
  //         "Miller Organic Bnls Sknls Chicken Br", '\$10.69/LB', '7'),
  //     Product("21", 'assets/imgs/productsImgs/P1.jpg', 'each', 'Organic Mango',
  //         '\$1.49', '8'),
  //     Product("22", 'assets/imgs/productsImgs/P2.jpg', 'pint',
  //         'Sweet Blueberries', '\$2.00', '8'),
  //     Product("23", 'assets/imgs/productsImgs/P3.jpg', 'per lb.',
  //         'Org Butternut Squash', '\$0.99/LB', '8'),
  //     Product("24", 'assets/imgs/productsImgs/P4.jpg', 'per lb.',
  //         'Sweet Red Bananas', '\$1.49/LB', '8'),
  //     Product("25", 'assets/imgs/productsImgs/P5.jpg', 'per lb.',
  //         "Organic Abate Fetel Pears", '\$1.99/LB', '8'),
  //     Product("21", 'assets/imgs/productsImgs/S1.jpg', '32 oz.',
  //         'Censea Cooked Shrimp 21/25', '\$21.98', '9'),
  //     Product("22", 'assets/imgs/productsImgs/S2.jpg', '16 oz.',
  //         'Cea Sea 26/30 Ct. Shrimp Uncooked', '\$7.99', '9'),
  //     Product("23", 'assets/imgs/productsImgs/S3.jpg', 'per lb.',
  //         'Wild Caught Whole Sardines', '\$2.99/LB', '9'),
  //     Product("24", 'assets/imgs/productsImgs/S4.jpg', 'per lb.',
  //         'Wild Caught Frozen Ocean Perch', '\$5.49/LB', '9'),
  //     Product("25", 'assets/imgs/productsImgs/S5.jpg', 'per lb.',
  //         "Wild Caught Norway Whole Mackerel", '\$4.99/LB', '9'),
  //   ];
  // }
}
