import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../helper/note_provider.dart';
import '../models/note.dart';
import 'package:provider/provider.dart';

import '../screens/note_add_screen.dart';

class DeletePopUp extends StatelessWidget {
  const DeletePopUp({
    required this.selectedNote,
  });

  final Note selectedNote;

  @override
  Widget build(BuildContext context) {
    Get.put(NoteController());
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      title: const Text(
        'Delete?',
        style: TextStyle(fontFamily: "Montserrat", fontSize: 18),
      ),
      content: const Text('Do you want to delete the note?',
          style: TextStyle(fontFamily: "Poppins", fontSize: 16)),
      actions: [
        TextButton(
          child: const Text('Yes'),
          onPressed: () {
            Get.find<NoteController>().deleteNote(selectedNote.id);
            Get.to(NoteAddScreen());
          },
        ),
        TextButton(
          child: const Text('No'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
