import 'package:market_of_ment/entitiy//test_items_example.dart';

import '../entitiy/item.dart';

class ItemRepository {

  static ItemRepository? _instance;
  late Map<num, Item> _items;

  ItemRepository._() {
    _items = {};
    instantiateTestContent();
  }

  static ItemRepository getInstance() {
    _instance ??= ItemRepository._();
    return _instance!;
  }

  Item getById(num id) {
    Item? item = _items[id];
    return item!;
  }

  List<Item> getAll() {
    List<Item> items = [];
    for (MapEntry<num, Item> entry in _items.entries) {
      items.add(entry.value);
    }

    return items;
  }

  void instantiateTestContent() {
    List<Item> items = ExampleSource.getExampleItems();
    Map<num, Item> itemMap = {};

    for (int a = 0; a < items.length; a++) {
      itemMap.putIfAbsent(a, () => items[a]);
    }

    _items.addAll(itemMap);
  }

}