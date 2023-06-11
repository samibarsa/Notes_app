import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widgets/edit_note.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNote(
        note: note,
      ),
    );
  }
}
