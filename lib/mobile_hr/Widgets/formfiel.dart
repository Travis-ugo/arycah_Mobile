import 'package:flutter/material.dart';

class FormBlock extends StatelessWidget {
  const FormBlock({
    Key? key,
    required this.validator,
    required this.prefixIcons,
    required this.hintText,
    required this.controller,
    required this.suffixIcon,
  }) : super(key: key);
  final String Function(String?) validator;
  final Widget prefixIcons;
  final String hintText;
  final TextEditingController controller;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        prefixIcon: prefixIcons,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
