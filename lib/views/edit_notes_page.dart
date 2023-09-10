import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});
  static String id = 'Edit Note Page';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(
              icon: Icons.done,
              title: 'Edit Note',
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 32),
                  CustomTextField(hint: 'Title'),
                  SizedBox(height: 16),
                  CustomTextField(hint: 'Content', maxLines: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
