class Cart {
  List<int> itemIds = [];

  (List<int>, List<int>) getItemsId() {
    List<int> unique = getUniqueList();
    List<int> uniqueCount = [];
    for (int id in unique) {
      uniqueCount.add(getCount(id));
    }
    return (unique, uniqueCount);
  }

  int getCount(int id) {
    int counter = 0;
    for (int itemId in itemIds) {
      if (id == itemId) {
        counter += 1;
      }
    }
    return counter;
  }

  List<int> getUniqueList() {
    List<int> n = [];
    for (int id in itemIds) {
      if (!n.contains(id)) {
        n.add(id);
      }
    }

    return n;
  }
}