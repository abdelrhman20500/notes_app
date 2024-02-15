import 'package:flutter/material.dart';
import 'package:notes_app/ui/screen/Edit%20_Notes/edit_notes_screen.dart';
import 'package:notes_app/ui/screen/Home/notes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      routes: {
        NotesScreen.routeName:(_)=>NotesScreen(),
        EditNotesScreen.routeName:(_)=>EditNotesScreen()
      },
      initialRoute: NotesScreen.routeName,
    );
  }
}

