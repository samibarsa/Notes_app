part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucsess extends AddNoteState {}

class AddNoteFailuer extends AddNoteState {
  final String arrMessage;

  AddNoteFailuer(this.arrMessage);
}
