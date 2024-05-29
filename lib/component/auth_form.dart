import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:market_of_ment/component/form_field.dart' as field;
import 'package:market_of_ment/component/form_button.dart';
import 'package:market_of_ment/pages/home_page.dart';
import 'package:market_of_ment/dto/user_dto.dart';
import 'package:market_of_ment/service/auth_service.dart';
import 'package:market_of_ment/pages/reg_page.dart';

class AuthForm extends StatefulWidget {
  AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Инициализация контроллеров, если нужно
  }

  @override
  void dispose() {
    // Освобождение ресурсов контроллеров
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            shrinkWrap: true,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              field.FormField(
                text: 'Enter your username',
                controller: loginController,
              ),
              field.FormField(
                text: 'Enter your password',
                controller: passwordController,
              ),
              AuthButton(
                text: 'Log in',
                callback: () async {
                  UserDto dto = UserDto();
                  dto.username = loginController.text;
                  dto.password = passwordController.text;
                  AuthService service = AuthService.getInstance();
                  bool isAuthenticated = await service.login(dto.username, dto.password);

                  if (isAuthenticated) {
                    log("Успешая аутентификация!");
                    Future.delayed(Duration.zero, () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    });
                  } else {
                    log("Такого пользователя не существует!");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Такого пользователя не существует!')),
                    );
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  Future.delayed(Duration.zero, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegPage()),
                    );
                  });
                },
                child: const Text(
                  'Not registered?',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
