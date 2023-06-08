import 'package:flutter/material.dart';

class CoustumSearchIcon extends StatelessWidget {
  const CoustumSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: const Icon(Icons.search),
    );
  }
}
