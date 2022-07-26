import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function? onPressed;
  final String? label;

  const Button({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => onPressed!(),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(label!),
      ),
    );
  }
}
