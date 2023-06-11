import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubites/note_cubit/note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widgets/coustm_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        BlocProvider.of<NoteCubit>(context).feathallnotes();
        List<NoteModel> notess = BlocProvider.of<NoteCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notess.length,
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Notesitem(
                  notes: notess[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
