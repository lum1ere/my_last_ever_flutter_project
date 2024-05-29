import 'package:flutter/material.dart';
import 'package:market_of_ment/entitiy/item.dart';
import 'package:market_of_ment/entitiy/user.dart';
import 'package:market_of_ment/pages/auth_page.dart';
import 'package:market_of_ment/pages/home_page.dart';
import 'package:market_of_ment/repositories/item_repository.dart';
import 'package:market_of_ment/service/auth_service.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ItemRepository itemRepository = ItemRepository.getInstance();
  final AuthService authService = AuthService.getInstance();
  List<int> _cartItemsId = [];
  List<num> _showedId = [];

  @override
  void initState() {
    super.initState();
    User? user = authService.getUserData();
    _cartItemsId = authService.localCart.getUniqueList();

  }

  void _removeItem(int id) {
    setState(() {
      authService.localCart.itemIds.remove(id);
      _cartItemsId.remove(id);
    });
  }

  final int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
      ),
      body: _cartItemsId.isEmpty
          ? Center(
        child: Text('Ваша корзина пуста'),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _cartItemsId.length,
              itemBuilder: (context, index) {
                Item item = itemRepository.getById(_cartItemsId[index]);
                return ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  leading: Image.network(
                    item.imagePath,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(item.title + ' x' + authService.localCart.getCount(item.id.toInt()).toString()),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.desc.length > 30
                          ? item.desc.substring(0, 30) + '...'
                          : item.desc),
                      SizedBox(height: 4.0),
                      Text('${item.cost.toString()} ${item.currency}'),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () => _removeItem(item.id.toInt()),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _onPurchasePressed,
              child: Text('Купить'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Кнопка займет всю ширину
              ),
            ),
          ),
        ],
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
    Future.delayed(Duration.zero, () {
      switch (index) {
        case 0:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const AuthPage()));
          break;
        case 1:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
          break;
      }
    });
  }

  void _onPurchasePressed() {
    if (authService.isAuthenticated()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Покупка успешна!')),
      );
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AuthPage()));
    }
  }
}
