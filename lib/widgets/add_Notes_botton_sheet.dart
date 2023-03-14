import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/widgets/form_add_note.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSucsses) {
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            print("failed ${state.errMassage}");
          }
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const FormAddNote());
          });
        },
      )),
    );
  }
}
