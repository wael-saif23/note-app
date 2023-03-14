part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSucsses extends NotesState {
  final List<NoteModel> notes;

  NotesSucsses(this.notes);
}

class NotesFailure extends NotesState {
  final String err;

  NotesFailure(this.err);
}
