part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucsses extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMassage;

  AddNoteFailure(this.errMassage);

}
