import 'package:flutter/material.dart';
import 'package:note/costant.dart';

class CoustmTextfiled extends StatelessWidget {
  const CoustmTextfiled(
      {super.key,
      required this.hintText,
      this.maxlines = 1,
      this.onsaved,
      this.onChanged});
  final String hintText;
  final int maxlines;
  final void Function(String?)? onsaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
        } else {
          return null;
        }
      },
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
