import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/colors_screen.dart';
import 'package:language_learning_app/screens/family_members.dart';
import 'package:language_learning_app/screens/numbers_screen.dart';
import 'package:language_learning_app/screens/phrases_screen.dart';
import 'package:language_learning_app/widgets/category_widget.dart';
import 'package:language_learning_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

  final String selected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        automaticallyImplyLeading: false,
        title: CustomText(
          text: 'Toku',
          color: Colors.white,
          size: 26,
          weight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CategoryWidget(
              title: 'Numbers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => NumbersScreen()),
                );
              },
            ),
            SizedBox(height: 16),

            CategoryWidget(
              title: 'Family Members',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => FamilyMembers()),
                );
              },
            ),
            SizedBox(height: 16),

            CategoryWidget(
              title: 'Colors',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => ColorsScreen()),
                );
              },
            ),
            SizedBox(height: 16),

            CategoryWidget(
              title: 'Phrases',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => PhrasesScreen()),
                );
              },
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
