import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_widget/notes_view.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});
 static const String routeName = "NotesScreen";
  @override
  Widget build(BuildContext context) {
    return NotesView();
  }
}
