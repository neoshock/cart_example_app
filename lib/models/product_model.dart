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

  Product({
    this.product_id,
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
    this.offerPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      product_id: json['product_id'],
      name: json['name'],
      price: json['price'] != null ? (json['price'] as num).toDouble() : null,
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
      offerPrice: json['offerPrice'] != null
          ? (json['offerPrice'] as num).toDouble()
          : null,
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
}
