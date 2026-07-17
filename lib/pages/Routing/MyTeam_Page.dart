import 'package:flutter/material.dart';

class MyteamPage extends StatelessWidget {
  const MyteamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My team page")),
      body: Column(
        children: [
          const Center(child: Text("My team page")),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text("go back"),
          ),
        ],
      ),
    );
  }
}
