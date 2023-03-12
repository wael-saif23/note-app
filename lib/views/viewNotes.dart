import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';



class viewNotes extends StatelessWidget {
  const viewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: notesViewBody(),
    );
  }
}


