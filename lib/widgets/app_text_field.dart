import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final bool isPassword;
  const AppTextField({super.key,
    this.label,
    this.icon,
    this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: icon != null ? Icon(icon) : null,
      ),
      obscureText: isPassword,
    );
  }
}
