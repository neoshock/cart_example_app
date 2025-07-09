import 'package:flutter/cupertino.dart';

class Product {
  final String? product_id;
  final String? name;
  final double? price;
  final String? unit;
  final String? image;
  final String? description;
  final String? warning;
  final String? ingredients;
  final String? category_id;
  final String? filter_id;
  final String? sensitivie_id;
  final String? brand_id;
  final String? aisle_id;
  final int? quantity;
  final bool? bestSelling;
  final bool? isOffer;
  final double? offerPrice;

  Product(
      {this.product_id,
      this.name,
      this.price,
      this.unit,
      this.image,
      this.description,
      this.warning,
      this.ingredients,
      this.category_id,
      this.filter_id,
      this.sensitivie_id,
      this.brand_id,
      this.aisle_id,
      this.quantity,
      this.bestSelling,
      this.isOffer,
      this.offerPrice});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      product_id: json['product_id'],
      name: json['name'],
      price: json['price'],
      unit: json['unit'],
      image: json['image'],
      description: json['description'],
      warning: json['warning'],
      ingredients: json['ingredients'],
      category_id: json['category_id'],
      filter_id: json['filter_id'],
      sensitivie_id: json['sensitivie_id'],
      brand_id: json['brand_id'],
      aisle_id: json['aisle_id'],
      quantity: json['quantity'],
      bestSelling: json['bestSelling'],
      isOffer: json['isOffer'],
      offerPrice: json['offerPrice'],
    );
  }

  Map<String, dynamic> toJson() => {
        'product_id': product_id,
        'name': name,
        'price': price,
        'unit': unit,
        'image': image,
        'description': description,
        'warning': warning,
        'ingredients': ingredients,
        'category_id': category_id,
        'filter_id': filter_id,
        'sensitivie_id': sensitivie_id,
        'brand_id': brand_id,
        'aisle_id': aisle_id,
        'quantity': quantity,
        'bestSelling': bestSelling,
        'isOffer': isOffer,
        'offerPrice': offerPrice,
      };

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

  // static List<Product> getProductsByCategoryId(String categoryId) {
  //   List<Product> allProducts = fetchAll();
  //   return allProducts
  //       .where((product) => product.categoryId == categoryId)
  //       .toList();
  // }
}
