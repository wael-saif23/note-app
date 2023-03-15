import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/contants.dart';
import 'package:noteapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Color(0xff34FF17);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());

    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);

      emit(AddNoteSucsses());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
