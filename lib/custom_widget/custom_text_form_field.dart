import 'package:flutter/material.dart';

class CustomTextField {
  static Widget customTextField(String hint, Icon icon, double fontSize,
      void Function(String?)? onChanged, String? Function(String?)? validator) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          prefixIcon: icon,
          fillColor: Colors.white,
          filled: true,
          hintText: hint,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red))),
    );
  }
}
