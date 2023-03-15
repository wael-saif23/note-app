import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/contants.dart';
import 'package:noteapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
   List<NoteModel>? notes;
  feachAllNote() async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);

   notes= noteBox.values.toList();
  }
}
