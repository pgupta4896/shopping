import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const Textfield({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Border color
          width: 1.0, // Border width
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 2), // Offset from the top
          ),
        ],
        borderRadius: BorderRadius.circular(8.0), // Border radius
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.grey),
            hintText: hintText,
            border: InputBorder.none, // Remove the default input border
            errorText: validator != null ? validator!(controller.text) : null,
          ),
          style: TextStyle(
            color: validator != null
                ? validator!(controller.text) == null
                    ? Colors.green
                    : Colors.red
                : null,
          ),
        ),
      ),
    );
  }
}
