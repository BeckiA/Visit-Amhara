import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../../../../utils/themes/app_theme_controller.dart';
import '../helper/note_provider.dart';
import '../models/note.dart';
import '../utils/constants.dart';
import '../widgets/delete_popup.dart';
import 'note_edit_screen.dart';

class NoteViewScreen extends StatelessWidget {
  static const route = '/note-view';

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    Get.put(NoteController());
    final args = Get.arguments;
    final id = args['id'];
    final noteController = Get.find<NoteController>();
    final selectedNote = noteController.getNote(id);
    return Scaffold(
      backgroundColor:
          themeController.isDarkMode.value ? Colors.black87 : Colors.white,
      appBar: AppBar(
        elevation: 0.7,
        backgroundColor:
            themeController.isDarkMode.value ? Colors.black87 : Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: themeController.isDarkMode.value
                ? Colors.white
                : Colors.black87,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete,
              color: themeController.isDarkMode.value
                  ? Colors.white
                  : Colors.black87,
            ),
            onPressed: () => _showDialog(selectedNote),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                selectedNote.title,
                style: viewTitleStyle,
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.access_time,
                    size: 18,
                  ),
                ),
                Text(selectedNote.date)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: selectedNote.imagePath == ''
                  ? const SizedBox.shrink()
                  : Image.file(
                      File(selectedNote.imagePath),
                      fit: BoxFit.cover,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                selectedNote.content,
                style: viewContentStyle,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          // ignore: deprecated_member_use
          hintColor:
              themeController.isDarkMode.value ? VAPrimaryColor : VAAccentColor,
          backgroundColor: Theme.of(context).hintColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData(),
        ),
        child: FloatingActionButton(
          onPressed: () {
            Get.toNamed(NoteEditScreen.route,
                arguments: {"id": selectedNote.id});
          },
          child: const Icon(Icons.edit),
        ),
      ),
    );
  }

  _showDialog(Note selectedNote) {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return DeletePopUp(selectedNote: selectedNote);
      },
    );
  }
}
