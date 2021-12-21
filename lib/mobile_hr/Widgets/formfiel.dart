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
  final Widget? prefixIcons;
  final String hintText;
  final TextEditingController controller;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 13),
          icon: prefixIcons,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
      ),
    );
  }
}
