import 'package:flutter/material.dart';
import 'package:language_learning_app/model/category_model.dart';
import 'package:language_learning_app/screens/colors_screen.dart';
import 'package:language_learning_app/screens/family_nembers.dart';
import 'package:language_learning_app/screens/nembers_screen.dart';
import 'package:language_learning_app/screens/phrases_screen.dart';
import 'package:language_learning_app/widgets/category_widget.dart';
import 'package:language_learning_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<CategoryModel> category = [
    CategoryModel(title: 'Members'),
    CategoryModel(title: 'Family Members'),
    CategoryModel(title: 'Colors'),
    CategoryModel(title: 'Phrases'),
  ];
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
              title: 'Nembers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => NembersScreen()),
                );
              },
            ),
            SizedBox(height: 16),

            CategoryWidget(
              title: 'Family Nembers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => FamilyNembers()),
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
