import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/costant.dart';
import 'package:note/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  featchAllNotes(NoteModel note) {
    try {
      var notesBox = Hive.box<NoteModel>(kNotebox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NoteSucsess(notes));
    } catch (e) {
      emit(NoteFailuer(e.toString()));
    }
  }
}
