import 'package:flutter/material.dart';
import 'package:note/costant.dart';

class CoustumBouttun extends StatelessWidget {
  const CoustumBouttun({super.key, this.onTap, this.isLoading = false});
  final Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kprimerycolor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: isLoading == true
              ? const SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
        ),
      ),
    );
  }
}
