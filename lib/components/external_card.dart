import 'package:flutter/material.dart';
import 'package:market_of_ment/entities/item.dart';
import 'package:market_of_ment/pages/card_view_page.dart';

class ExternalCard extends StatelessWidget {
  final Item item;
  const ExternalCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CardVIewPage(item: item)
        ));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent),
        child: Center(child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    item.imagePath,
                ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                  child: Text(item.title, style: const TextStyle(fontSize: 24))),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('${item.cost} ${item.currency}', style: const TextStyle(fontSize: 24)))
              ),
            ),
          ],
        )),
      ),
    );
  }
}
