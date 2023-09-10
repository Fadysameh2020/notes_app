import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});
  static String id = 'Edit Note Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
