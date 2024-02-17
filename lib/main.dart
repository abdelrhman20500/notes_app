import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/ui/screen/Edit%20_Notes/edit_notes_screen.dart';
import 'package:notes_app/ui/screen/Home/notes_screen.dart';
import 'package:notes_app/ui/uitils/constant.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}

