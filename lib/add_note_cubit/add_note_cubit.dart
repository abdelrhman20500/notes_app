import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/add_note_cubit/add_note_state.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/ui/uitils/constant.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());

  addNote(NoteModel note)async {
    emit(AddNoteLoading());
    try{
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await noteBox.add(note);
    }catch (e){
      AddNoteFailure(e.toString());
    }
  }
}