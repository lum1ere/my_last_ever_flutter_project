import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:market_of_ment/entitiy/item.dart';
import 'package:market_of_ment/pages/auth_page.dart';
import 'package:market_of_ment/pages/cart_page.dart';
import 'package:market_of_ment/repositories/item_repository.dart';
import 'package:market_of_ment/component/external_card.dart';

class HomePage extends StatefulWidget {
  ItemRepository itemRepository = ItemRepository.getInstance();

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Item> items = widget.itemRepository.getAll();
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text('Магазин')), backgroundColor: Colors.blueAccent),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 270,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                mainAxisExtent: 250
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext ctx, index) {
              return ExternalCard(item: items[index]);
            }),
      ),
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
      case 2: Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
    }

  }
}
