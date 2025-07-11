import 'dart:async';

import 'package:cart_example_app/features/products/widgets/product_item.dart';
import 'package:cart_example_app/features/products/widgets/product_item_skeleton.dart';
import 'package:cart_example_app/models/category_model.dart';
import 'package:cart_example_app/models/deparment_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/providers/category_provider.dart';
import 'package:cart_example_app/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListPage extends StatefulWidget {
  final Department department;
  const ProductListPage({super.key, required this.department});

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<Product> products = [];
  List<CategoryModel> categories = [];
  bool showSkeleton = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ProductProvider>().products;
    context.read<ProductProvider>().loadProducts();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 45),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {
                  context.read<ProductProvider>().clearProductsByCategory();
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
                label: const Text(''),
              ),
              Text(
                widget.department.name!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.15),
            ],
          ),
          Flexible(
            child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                Timer(const Duration(seconds: 2), () {
                  if (mounted) {
                    setState(() {
                      showSkeleton = false;
                    });
                  }
                });

                return showSkeleton
                    ? GridView.builder(
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 300,
                            ),
                        itemBuilder: (context, index) =>
                            const ProductItemSkeleton(),
                      )
                    : GridView.builder(
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 300,
                            ),
                        itemBuilder: (context, index) =>
                            ProductBox(product: products[index]),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
