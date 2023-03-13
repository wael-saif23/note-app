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
        child: Column(
          children:const [
            SizedBox(
              height: 32,
            ),
            customTextfeld(hint: "title"),
            SizedBox(
              height: 16,
            ),
            customTextfeld(hint: "contant", maxline: 6),
            SizedBox(height: 32,),
            customBotton(),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}


