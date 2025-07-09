import 'package:cart_example_app/features/account/account_screen.dart';
import 'package:cart_example_app/features/cart/cart_screen.dart';
import 'package:cart_example_app/features/cart/models/cart_model.dart';
import 'package:cart_example_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cart/providers/cart_provider.dart';
import '../explore/explore_screen.dart';

class ButtonNavigationComponent extends StatefulWidget {
  final int selectedIndex;

  const ButtonNavigationComponent({super.key, required this.selectedIndex});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonNavigationComponentState createState() =>
      _ButtonNavigationComponentState();
}

class _ButtonNavigationComponentState extends State<ButtonNavigationComponent> {
  int currentIndex = 0;
  final pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const AccountPage(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    List<Cart> cartList = context.watch<CartProvider>().cartList;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.surface,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.shopping_cart_outlined),
                cartList.isNotEmpty
                    ? Positioned(
                        top: 0,
                        left: 6,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '${cartList.length}',
                            style: const TextStyle(
                              fontSize: 9,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
