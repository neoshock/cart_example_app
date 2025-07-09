import 'package:cart_example_app/features/products/products_screen.dart';
import 'package:cart_example_app/models/deparment_model.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class DeparmentItem extends StatelessWidget {
  final Department department;
  const DeparmentItem({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    Color color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt());
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Card(
        elevation: 0,
        color: color.withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(color: color.withValues(alpha: 0.5),)),
        child: InkWell(
          splashColor: color.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(18),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return ProductListPage(
                    department: department,
                  );
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
              ),
            );
          },
          child: SizedBox(
            width: 450,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 120,
                    child: Image(image: AssetImage(department.image!)),
                  ),
                  SizedBox(
                    width: 120,
                    child: Text(
                      department.name!,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
