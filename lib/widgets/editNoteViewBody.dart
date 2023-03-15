import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/notes_cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/custom_textfeld.dart';

import 'custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).feachAllNote();
            },
            title: "Edit Notes",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextfeld(
            onchanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextfeld(
            onchanged: (value) {
              subtitle = value;
            },
            hint: widget.note.subtitle,
            maxline: 6,
          )
        ],
      ),
    );
  }
}
