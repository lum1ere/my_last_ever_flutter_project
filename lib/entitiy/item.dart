import 'package:decimal/decimal.dart';

class Item {
  late num id;
  late String title;
  late String imagePath;
  late String desc;
  late String stats;
  late List<String> sliderImagePaths;
  late Decimal cost;
  late String currency;

  Item._() {}

  static ItemBuilder builder() {
    return ItemBuilder(Item._());
  }
}

class ItemBuilder {
  late Item _item;

  ItemBuilder(Item item) {
    _item = item;
  }

  ItemBuilder setId(num id) {
    _item.id = id;
    return this;
  }

  ItemBuilder setTitle(String title) {
    _item.title = title;
    return this;
  }

  ItemBuilder setImagePath(String imagePath) {
    _item.imagePath = imagePath;
    return this;
  }

  ItemBuilder setDesc(String desc) {
    _item.desc = desc;
    return this;
  }

  ItemBuilder setStats(String stats) {
    _item.stats = stats;
    return this;
  }

  ItemBuilder setSliderImagePaths(List<String> pathList) {
    _item.sliderImagePaths = pathList;
    return this;
  }

  ItemBuilder setCurrency(String currency) {
    _item.currency = currency;
    return this;
  }

  ItemBuilder setCost(Decimal cost) {
    _item.cost = cost;
    return this;
  }

  Item build() {
    return _item;
  }

}