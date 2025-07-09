import 'package:cart_example_app/features/nav/botton_navigation_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/2792340.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            Card(
              margin: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/imgs/logo.png", width: 120),
                    const SizedBox(height: 15),
                    const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'to our store',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Ger your groceries in as fast as one hour',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: const Duration(
                              milliseconds: 300,
                            ),
                            pageBuilder:
                                (
                                  BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation,
                                ) {
                                  return ButtonNavigationComponent(
                                    selectedIndex: 0,
                                  );
                                },
                            transitionsBuilder:
                                (
                                  BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation,
                                  Widget child,
                                ) {
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
                      style: ButtonStyle(
                        elevation: WidgetStateProperty.all(0),
                        minimumSize: WidgetStateProperty.all(
                          const Size(360, 56),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
