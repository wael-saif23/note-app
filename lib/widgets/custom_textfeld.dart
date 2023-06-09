import 'package:flutter/material.dart';
import 'package:noteapp/contants.dart';

class CustomTextfeld extends StatelessWidget {
  const CustomTextfeld(
      {super.key,
      required this.hint,
      this.maxline = 1,
      this.onSave,
      this.onchanged});
  final String hint;
  final int maxline;
  final Function(String)? onchanged;
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged,
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return " field is requird ";
        } else {
          return null;
        }
      },
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontSize: 20,
          color: kPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
