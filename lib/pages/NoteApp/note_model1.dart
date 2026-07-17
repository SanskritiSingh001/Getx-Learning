import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/config/ThemeController.dart';
import 'package:getx_project/pages/NoteApp/AddNewNotePage.dart';
import 'package:intl/intl.dart';

import 'package:getx_project/pages/NoteApp/NoteAppController.dart';

class Noteapp extends StatelessWidget {
  const Noteapp({super.key});

  @override
  Widget build(BuildContext context) {
    final Noteappcontroller noteappController = Get.put(Noteappcontroller());
    final Themecontroller themecontroller = Get.put(Themecontroller());

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                themecontroller.changeTheme();
              },
              icon: const Icon(Icons.dark_mode,color: Colors.white),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Notes App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          print("FAB Clicked");
          Get.to(() => const Addnewnotepage());
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:Obx(() {
          return  GridView.builder(
            itemCount: noteappController.noteList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, index) {
              final note = noteappController.noteList[index];

              return Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            note.title ?? "No Title",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Expanded(
                      child: Text(
                        note.content ?? "No Content",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ),
                    ),

                    const Divider(),

                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 15,
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            note.createdAt != null
                                ? DateFormat("dd MMM yyyy\nhh:mm a").format(
                              DateTime.parse(note.createdAt!),
                            )
                                : "",
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(context).colorScheme.primaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        })
      ),
    );
  }
}