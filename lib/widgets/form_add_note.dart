import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/colors_items.dart';
import 'package:noteapp/widgets/custom_botton.dart';
import 'package:noteapp/widgets/custom_textfeld.dart';

class FormAddNote extends StatefulWidget {
  const FormAddNote({
    super.key,
  });

  @override
  State<FormAddNote> createState() => _FormAddNoteState();
}

class _FormAddNoteState extends State<FormAddNote> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextfeld(
              onSave: (value) {
                title = value;
              },
              hint: "title"),
          const SizedBox(
            height: 16,
          ),
          CustomTextfeld(
              onSave: (value) {
                subtitle = value;
              },
              hint: "contant",
              maxline: 6),
          const SizedBox(
            height: 16,
          ),
          ColorsItemList(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(builder: (context, state) {
            return CustomBotton(
              isloading: state is AddNoteLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                      DateTime now = DateTime.now();
                    var formattedDate = DateFormat("yyyy-MM-dd  kk:mm").format(now);
                  NoteModel noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formattedDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}


