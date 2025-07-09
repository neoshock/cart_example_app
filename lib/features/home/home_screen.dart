import 'package:cart_example_app/features/home/widgets/grocerie_item.dart';
import 'package:cart_example_app/features/nav/botton_navigation_widget.dart';
import 'package:cart_example_app/features/products/widgets/product_item.dart';
import 'package:cart_example_app/features/products/widgets/product_item_skeleton.dart';
import 'package:cart_example_app/models/order_model.dart';
import 'package:cart_example_app/models/product_model.dart';
import 'package:cart_example_app/providers/order_provider.dart';
import 'package:cart_example_app/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> bestSelling = [];
  List<Product> exclusiveOffers = [];
  List<Order> recentOrders = [];
  List<Product> produce = [];
  bool isVisible = false;

  // Usuario estático
  String userName = 'John Doe';
  int totalPoints = 450;

  void changeToScanPage() {
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) =>
            const ButtonNavigationComponent(selectedIndex: 2),
      ),
    );
  }

  //method that return a gettings depending of the hour, example: Good morning, Good afternoon, Good night
  String getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good morning';
    } else if (hour < 18) {
      return 'Good afternoon';
    } else {
      return 'Good night';
    }
  }

  @override
  void initState() {
    super.initState();
    final productProvider = Provider.of<ProductProvider>(
      context,
      listen: false,
    );
    productProvider.loadExclusiveOffers();
    productProvider.loadBestSelling();
    productProvider.getLastFiveProducts();
  }

  @override
  Widget build(BuildContext context) {
    bestSelling = Provider.of<ProductProvider>(context).bestSelling;
    exclusiveOffers = Provider.of<ProductProvider>(context).offers;
    produce = Provider.of<ProductProvider>(context).otherProducts;
    recentOrders = context.watch<OrderProvider>().orders;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 45),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${getGreeting()}, $userName',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 300.00,
                child: ListView.builder(
                  itemCount: exclusiveOffers.isNotEmpty
                      ? exclusiveOffers.length
                      : 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => exclusiveOffers.isNotEmpty
                      ? ProductBox(product: exclusiveOffers[index])
                      : const ProductItemSkeleton(),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Best Selling',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 300.00,
                child: ListView.builder(
                  itemCount: bestSelling.isNotEmpty ? bestSelling.length : 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => bestSelling.isNotEmpty
                      ? ProductBox(product: bestSelling[index])
                      : const ProductItemSkeleton(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Produce',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.green.shade600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120.00,
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: produce.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      GrocerieBox(product: produce[index]),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 300.00,
                child: ListView.builder(
                  itemCount: produce.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      ProductBox(product: produce[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
