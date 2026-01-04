// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final Widget? suffix;
  final TextInputType keyboardType;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.suffix,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF3F5F7),
        hintText: hint,
        suffixIcon: suffix,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
