import 'package:flutter/material.dart';
import 'package:market_app/layouts/appbar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:market_app/pages/home/home.dart';
import 'package:market_app/pages/sales/sales.dart';
import 'package:market_app/pages/settings/settings.dart';
import 'package:market_app/pages/stock/stock.dart';



class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SalesPage(),
    const StockPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Market App',),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13.0),
          child: GNav(
            backgroundColor: Colors.deepPurple,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor:Colors.deepPurple.shade400,
            gap: 8,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.shopping_cart, text: 'Sales'),
              GButton(icon: Icons.inventory, text: 'Stock'), 
              GButton(icon: Icons.person, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}