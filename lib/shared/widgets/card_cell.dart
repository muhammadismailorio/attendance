import 'package:flutter/material.dart';

class CardCell extends StatelessWidget {
  final String name, value;
  final bool bottomSpace;

  const CardCell({
    super.key,
    required this.name,
    required this.value,
    this.bottomSpace = true,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(color: Color(0xFF808080), fontSize: 16),
          ),
          const SizedBox(height: 3),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
          SizedBox(height: bottomSpace ? 18 : 0),
        ],
      ),
    );
  }
}
