part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSucsess extends NoteState {
  List<NoteModel> note = [];
  NoteSucsess(this.note);
}

class NoteFailuer extends NoteState {
  final String arrMessage;
  NoteFailuer(this.arrMessage);
}
