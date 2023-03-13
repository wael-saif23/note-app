import 'package:flutter/material.dart';
import 'package:noteapp/contants.dart';
import 'package:noteapp/widgets/custom_botton.dart';

import 'custom_textfeld.dart';

class addNoteBottonSheet extends StatelessWidget {
  const addNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: formAddNote(),
      ),
    );
  }
}

class formAddNote extends StatefulWidget {
  const formAddNote({
    super.key,
  });

  @override
  State<formAddNote> createState() => _formAddNoteState();
}

class _formAddNoteState extends State<formAddNote> {
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
          customTextfeld(
              onSave: (value) {
                title = value;
              },
              hint: "title"),
          SizedBox(
            height: 16,
          ),
          customTextfeld(
              onSave: (value) {
                subtitle = value;
              },
              hint: "contant",
              maxline: 6),
          SizedBox(
            height: 32,
          ),
          customBotton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
