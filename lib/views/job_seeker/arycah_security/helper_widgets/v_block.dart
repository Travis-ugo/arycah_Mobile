import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VBlock extends StatefulWidget {
  final TextEditingController controller;
  const VBlock({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<VBlock> createState() => _VBlockState();
}

class _VBlockState extends State<VBlock> {
  @override
  Widget build(BuildContext context) {
    Color borderColor = Colors.grey.shade500;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Center(
          child: TextFormField(
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(
                RegExp(r'[0-9]'),
              ),
            ],
            maxLength: 1,
            controller: widget.controller,
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
              } else if (value.isNotEmpty) {
                setState(() {
                  borderColor = Colors.blue;
                });
              }
              return "null";
            },
          ),
        ),
      ),
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
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
