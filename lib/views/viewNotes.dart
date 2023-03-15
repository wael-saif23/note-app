import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/notes_cubit/notes_cubit.dart';
import 'package:noteapp/widgets/add_Notes_botton_sheet.dart';

import '../widgets/notes_view_body.dart';

class ViewNotes extends StatelessWidget {
  const ViewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              context: context,
              builder: (context) {
                return const AddNoteBottonSheet();
              });
        },
        backgroundColor: Colors.blueGrey.withOpacity(.6),
        child: const Icon(Icons.add),
      ),
      body: const notesViewBody(),
    );
  }
}
