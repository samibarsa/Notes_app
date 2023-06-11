import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/costant.dart';
import 'package:note/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notes;
  feathallnotes() {
    var notebox = Hive.box<NoteModel>(kNotebox);
    notes = notebox.values.toList();
    emit(NoteSucsess());
  }
}
