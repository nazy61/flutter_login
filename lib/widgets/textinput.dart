import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String? hint;
  final IconData? icon;

  const TextInput({
    Key? key,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon!,
          color: Colors.grey,
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: TextField(
            decoration: InputDecoration(hintText: widget.hint!),
          ),
        ),
      ],
    );
  }
}
