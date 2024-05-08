import 'package:flutter/material.dart';
import 'package:market_of_ment/component/auth_form.dart';
import 'package:market_of_ment/pages/cart_page.dart';
import 'package:market_of_ment/service/auth_service.dart';
import 'package:market_of_ment/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  void checkAuth(BuildContext context) {
    AuthService? service = AuthService.getInstance();
    if (service.isAuthenticated()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }


  @override
  Widget build(BuildContext context) {
    checkAuth(context);
    return Scaffold(
      appBar:
          AppBar(title: const Text("Auth Form"), backgroundColor: Colors.white),
      backgroundColor: Colors.blueAccent,
      body: Container(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07, left: 0, right: 0),
        child: AuthForm(),
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) => {
        if (index == 2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()))
        }
        else if (index == 1) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))
        }
      },
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
}
