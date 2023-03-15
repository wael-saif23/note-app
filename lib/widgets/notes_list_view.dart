import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/notes_cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/note_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
             List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return  Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: NoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
