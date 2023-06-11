import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/cubites/note_cubit/note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/Edit_note_view.dart';

class Notesitem extends StatelessWidget {
  const Notesitem({super.key, required this.notes});
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EditNoteView(
            note: notes,
          ),
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(notes.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  notes.subtitle,
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.3)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<NoteCubit>(context).feathallnotes();
                  },
                  icon:
                      const Icon(FontAwesomeIcons.trash, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 26, top: 10, bottom: 10),
              child: Text(
                notes.date,
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.3)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
