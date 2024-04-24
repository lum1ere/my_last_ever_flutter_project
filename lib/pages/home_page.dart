import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:market_of_ment/entities/item.dart';
import 'package:market_of_ment/repositories/item_repository.dart';
import 'package:market_of_ment/components/external_card.dart';

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
        margin: const EdgeInsets.all(30),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                mainAxisExtent: 400
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
    setState(() {
      _selectedIndex = index;
    });
  }
}
