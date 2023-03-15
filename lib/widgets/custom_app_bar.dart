import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const Spacer(),
        CustomIcon(
          onPressed: onPressed,
          
          icon: icon),
      ],
    );
  }
}
