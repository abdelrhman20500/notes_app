import 'package:flutter/material.dart';

import '../../../widgets/notes_widget/edit_notes-view_body.dart';

class EditNotesScreen extends StatelessWidget {
  const EditNotesScreen({super.key});
 static const String routeName = "EditNotesScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
