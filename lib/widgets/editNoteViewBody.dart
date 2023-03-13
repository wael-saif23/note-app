import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_textfeld.dart';

import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(title: "Edit Notes", icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextfeld(
            hint: "title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextfeld(
            hint: "contants",
            maxline: 6,
          )
        ],
      ),
    );
  }
}
