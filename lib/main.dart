import 'package:cart_example_app/configs/app_theme.dart';
import 'package:cart_example_app/features/cart/providers/cart_provider.dart';
import 'package:cart_example_app/providers/category_provider.dart';
import 'package:cart_example_app/providers/deparment_provider.dart';
import 'package:cart_example_app/providers/order_provider.dart';
import 'package:cart_example_app/providers/product_provider.dart';
import 'package:cart_example_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DepartmentProvider>(
          create: (_) => DepartmentProvider(),
        ),
        ChangeNotifierProvider<CategoryProvider>(
          create: (_) => CategoryProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
        ChangeNotifierProvider<OrderProvider>(create: (_) => OrderProvider()),
      ],
      builder: (context, child) => MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: const Scaffold(body: WelcomePage()),
      ),
    );
  }
}
