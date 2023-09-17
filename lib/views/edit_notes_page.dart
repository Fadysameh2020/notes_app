import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_notes_colors_list.dart';

class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key});
  static String id = 'Edit Note Page';

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    NoteModel? note = ModalRoute.of(context)?.settings.arguments as NoteModel?;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomAppBar(
              icon: Icons.done,
              title: 'Edit Note',
              onPressed: () {
                note?.title = title ?? note.title;
                note?.subTitle = content ?? note.subTitle;
                note?.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  CustomTextField(
                    hint: note?.title ?? '',
                    onChanged: (data) {
                      title = data;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    hint: note?.subTitle ?? '',
                    maxLines: 5,
                    onChanged: (data) {
                      content = data;
                    },
                  ),
                  const SizedBox(height: 16),
                  EditNotesColorsList(noteModel: note!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
