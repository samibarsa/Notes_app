import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note/costant.dart';
import 'package:note/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addnote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotebox);
      await notesBox.add(note);
      emit(AddNoteSucsess());
    } catch (e) {
      emit(AddNoteFailuer(e.toString()));
    }
  }
}
