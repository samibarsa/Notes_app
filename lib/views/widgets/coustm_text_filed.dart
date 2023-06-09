import 'package:flutter/material.dart';
import 'package:note/costant.dart';

class CoustmTextfiled extends StatelessWidget {
  const CoustmTextfiled(
      {super.key, required this.hintText, required this.maxlines});
  final String hintText;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kprimerycolor,
      decoration: InputDecoration(
          hintText: '${hintText}',
          hintStyle: TextStyle(color: kprimerycolor),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(kprimerycolor)),
    );
  }

  OutlineInputBorder buildborder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
