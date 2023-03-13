import 'package:flutter/material.dart';
import 'package:noteapp/widgets/add_Notes_botton_sheet.dart';

import '../widgets/notes_view_body.dart';

class viewNotes extends StatelessWidget {
  const viewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(24)),
              context: context,
              builder: (context) {
                return const addNoteBottonSheet();
              });
        },
        child: const  Icon(Icons.add),
        backgroundColor: Colors.blueGrey.withOpacity(.6),
      ),
      body: const notesViewBody(),
    );
  }
}


