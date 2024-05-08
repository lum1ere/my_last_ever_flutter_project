import 'package:flutter/material.dart';
import 'package:market_of_ment/component/reg_form.dart';

class RegPage extends StatelessWidget {
  const RegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Auth Form"), backgroundColor: Colors.white),
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding:
        EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07, left: 0, right: 0),
        child: RegForm(),
      ),
    );
  }
}
