import 'dart:developer';
import 'package:market_of_ment/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:market_of_ment/component/form_field.dart' as field;
import 'package:market_of_ment/component/form_button.dart';
import 'package:market_of_ment/dto/user_dto.dart';
import 'package:market_of_ment/service/auth_service.dart';

class RegForm extends StatefulWidget {
  RegForm({super.key});

  final emailController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.black,
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 3),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
        child: Center(
          child: ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Registration",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              field.FormField(
                  text: 'Enter your email', controller: widget.emailController),
              field.FormField(
                  text: 'Enter your username',
                  controller: widget.loginController),
              field.FormField(
                  text: 'Enter your password',
                  controller: widget.passwordController),
              AuthButton(
                  text: 'Register',
                  callback: () {
                    UserDto dto = UserDto();
                    dto.email = widget.emailController.text;
                    dto.username = widget.loginController.text;
                    dto.password = widget.passwordController.text;
                    AuthService service = AuthService.getInstance();
                    service.register(dto);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AuthPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
