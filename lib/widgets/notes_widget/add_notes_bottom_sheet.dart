import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add_note_cubit/add_note_state.dart';
import 'package:notes_app/widgets/notes_widget/custom_text_field.dart';

class AddNotesBottomSheet extends StatefulWidget {
  const AddNotesBottomSheet({super.key});

  @override
  State<AddNotesBottomSheet> createState() => _AddNotesBottomSheetState();
}

class _AddNotesBottomSheetState extends State<AddNotesBottomSheet> {
bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          height: MediaQuery.of(context).size.height*0.5,
        child: BlocConsumer(
            listener: (context, state)
            {
              if(state is AddNoteSuccess)
              {
                Navigator.pop(context);
              }
              if(state is AddNoteFailure)
                {
                  print("failed ${state.errMessage}");
                }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading ? true : false,
                  child: const AddNoteForm());
            },
      ),
     ),
    );
  }
}


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  /// i use it to show for user error if don't enter well text.
  AutovalidateMode autoValidateMode =AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey= GlobalKey();
  String? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hinText: "title",
            onSaved: (value)
            {
              title =value;
            },
          ),
          const SizedBox(height: 12,),
          CustomTextField(
            onSaved: (value)
            {
              subTitle = value;
            },
            hinText: "title",
            maxLines: 5,
          ),
          Spacer(),
          CustomBottom(
            onTap: ()
            {
              if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }else
                  {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
            },
          ),
          const SizedBox(height: 8,)
        ],
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff62FCD7)
        ),
        child: const Center(child: Text("Add", style: TextStyle(color: Colors.black,
        fontSize: 16, fontWeight: FontWeight.w600),)),
      ),
    );
  }
}
