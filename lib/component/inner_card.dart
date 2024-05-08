import 'package:flutter/material.dart';
import 'package:market_of_ment/entitiy/item.dart';
import 'package:carousel_slider/carousel_slider.dart';


class InnerCard extends StatefulWidget {
  final Item item;

  const InnerCard({super.key, required this.item});

  @override
  State<InnerCard> createState() => _InnerCardState();
}

class _InnerCardState extends State<InnerCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
                child: Text(
              widget.item.title,
              style: const TextStyle(fontSize: 30),
            ))),
        CarouselSlider(
            items: widget.item.sliderImagePaths.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.network(i)
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(height: 300)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                Text(
                'Описание: ${widget.item.desc}',
                style: const TextStyle(fontSize: 20),
              ),
            ]
            ),
          ),
        )
      ],
    );
  }
}
