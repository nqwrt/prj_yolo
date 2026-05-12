import 'package:flutter/material.dart';

class CustomRadioIcon extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  const CustomRadioIcon({
    super.key,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        selected
            ? Icons.radio_button_checked
            : Icons.radio_button_unchecked,
        color: selected ? Colors.blue : Colors.grey,
        size: 24,
      ),
    );
  }
}