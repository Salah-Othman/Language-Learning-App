import 'package:flutter/material.dart';
import 'package:language_learning_app/widgets/custom_text.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [Colors.brown, Colors.brown, Colors.grey],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: CustomText(
            text: title,
            color: Colors.white,

            size: 18,
            weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
