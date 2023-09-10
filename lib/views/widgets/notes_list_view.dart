import 'package:flutter/material.dart';
import 'notes_view_body.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: NotesViewBody(),
      ),
    );
  }
}
