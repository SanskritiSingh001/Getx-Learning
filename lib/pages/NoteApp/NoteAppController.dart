import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/NoteModel.dart';


class Noteappcontroller extends GetxController{
  RxList<NoteModel> noteList = <NoteModel>[].obs;
  String LOCAL_STORAGE_NAME = "Notes  _List";
  final box = GetStorage();

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getNotesFromStorage();
  }

  void addNote() {
    print(titleController.text);
    print(contentController.text);

    final newNote = NoteModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: titleController.text,
      content: contentController.text,
      createdAt: DateTime.now().toString(),
    );
    noteList.add(newNote);
    box.write(LOCAL_STORAGE_NAME, noteList.map((e) => e.toJson()).toList());
    Get.snackbar("Success", "Note added Successfully");
    titleController.clear();
    contentController.clear();
    Get.back();
    //Get.offAll(Noteapp());
  }
  void getNotesFromStorage(){
    final storedNotes = box.read<List>(LOCAL_STORAGE_NAME);
    print("Storage Notes: $storedNotes");
    if(storedNotes != null) {
      noteList.value = List<Map<String, dynamic>>.from(
          storedNotes
    ).map((e) => NoteModel.fromJson(e)).toList();
    }
  }
}