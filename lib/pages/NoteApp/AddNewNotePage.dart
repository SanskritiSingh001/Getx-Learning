import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'NoteAppController.dart';

class Addnewnotepage extends StatelessWidget {
  const Addnewnotepage({super.key});

  @override
  Widget build(BuildContext context) {
    Noteappcontroller noteAppController = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Notes App",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple.shade200,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: noteAppController.titleController,
              decoration: InputDecoration(
                hintText: 'note title',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.title),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: noteAppController.contentController,
              decoration: InputDecoration(
                hintText: 'content',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  noteAppController.addNote();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.save),
                    SizedBox(width: 5),
                    Text("save note"),
                  ],
                ),
            ),
          ],
        ),
      )
    );
  }
}
