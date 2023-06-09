import 'package:flutter/material.dart';
import 'package:note/views/widgets/coustm_text_filed.dart';

class AddNoteShowbottomsheet extends StatelessWidget {
  const AddNoteShowbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CoustmTextfiled(
            hintText: 'Title',
            maxlines: 1,
          ),
          SizedBox(height: 16),
          CoustmTextfiled(
            hintText: 'Content ...',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
