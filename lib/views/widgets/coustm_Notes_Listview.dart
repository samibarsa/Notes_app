import 'package:flutter/material.dart';
import 'package:note/views/widgets/coustm_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Notesitem(),
        );
      },
    );
  }
}
