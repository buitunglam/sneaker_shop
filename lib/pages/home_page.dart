import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom_nav_bar.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  // Page to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    void navigateBottomBar(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  "lib/images/logo.png",
                  color: Colors.white,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "H O M E",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text(
                      "A B O U T",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  "L O G O U T",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[selectedIndex],
    );
  }
}
