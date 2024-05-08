import 'package:flutter/material.dart';

class FormField extends StatefulWidget {
  final String text;
  final TextEditingController controller;

  FormField({super.key, required this.text, required this.controller});

  @override
  State<FormField> createState() => _FormFieldState();

  String getInput() {
    return controller.text;
  }
}

class _FormFieldState extends State<FormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(),
          border: const OutlineInputBorder(),
          labelText: widget.text,
          labelStyle: const TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w500),
          filled: true,
        ),
        cursorColor: Colors.black,
      ),
    );
  }
}
