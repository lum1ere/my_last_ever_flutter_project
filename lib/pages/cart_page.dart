import 'package:flutter/material.dart';
import 'package:market_of_ment/pages/auth_page.dart';
import 'package:market_of_ment/pages/home_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomBarTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_2),
            label: 'Магазин',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Корзина',
          ),
        ],
      ),
    );
  }

  void _onBottomBarTapped(int index) {
    switch (index) {
      case 0: Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthPage())); break;
      case 1: Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }

  }
}
