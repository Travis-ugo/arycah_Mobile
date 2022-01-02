import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VBlock extends StatelessWidget {
  const VBlock({
    Key? key,
    //  required this.validator,
    required this.controller,
  }) : super(key: key);
  // final String Function(String?) validator;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(
          RegExp(r'[0-9]'),
        ),
      ],
      maxLength: 1,
      controller: controller,
      decoration: const InputDecoration(
        counterText: '',
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter your email address to continue';
        }
        return "null";
      },
    );
  }
}

class VBlockContainer extends StatelessWidget {
  const VBlockContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Center(
          child: child,
        ),
        height: 70,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade500),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.shade200,
          //     spreadRadius: 7,
          //     blurRadius: 9,
          //     offset: Offset.fromDirection(
          //       1,
          //       9,
          //     ),
          //   ),
          // ],
        ),
      ),
    );
  }
}
