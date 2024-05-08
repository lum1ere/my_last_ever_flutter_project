import 'package:flutter/material.dart';
import 'package:market_of_ment/component/inner_card.dart';
import 'package:market_of_ment/entitiy/item.dart';

class CardVIewPage extends StatelessWidget {
  final Item item;
  const CardVIewPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Маркетплейс: ${item.title}'), backgroundColor: Colors.blueAccent),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 230, 230, 230)
        ),
        child: InnerCard(item: item),
      ),
    );
  }
}
