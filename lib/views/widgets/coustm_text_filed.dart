import 'package:flutter/material.dart';
import 'package:note/costant.dart';

class CoustmTextfiled extends StatelessWidget {
  const CoustmTextfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimerycolor,
      decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(color: Kprimerycolor),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(Kprimerycolor)),
    );
  }

  OutlineInputBorder buildborder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
