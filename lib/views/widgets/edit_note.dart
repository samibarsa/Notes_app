import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubites/note_cubit/note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widgets/coustm_appbar.dart';
import 'package:note/views/widgets/coustm_text_filed.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CoustmAppbar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NoteCubit>(context).feathallnotes();
              },
              title: 'Edit Note',
              icon: Icons.check),
          const SizedBox(
            height: 50,
          ),
          CoustmTextfiled(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title,
              maxlines: 1),
          const SizedBox(
            height: 16,
          ),
          CoustmTextfiled(
              onChanged: (value) {
                content = value;
              },
              hintText: widget.note.subtitle,
              maxlines: 5)
        ],
      ),
    );
  }
}
