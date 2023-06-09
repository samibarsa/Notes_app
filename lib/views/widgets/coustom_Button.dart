import 'package:flutter/material.dart';
import 'package:note/costant.dart';

class CoustumBouttun extends StatelessWidget {
  const CoustumBouttun({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kprimerycolor, borderRadius: BorderRadius.circular(16)),
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
