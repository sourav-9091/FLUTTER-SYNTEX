import 'package:flutter/material.dart';
import 'package:listview/widgets/listviewItems.dart';

import '../widgets/dialogBox.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _posts = ['Task 1'];

  void createNewTaskNew() {
    showDialog(
      context: (this.context),
      builder: (context) {
        return const DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CODE TO IMPLEMENT BASIC LISTVIEW

      // body: ListView(
      //   children: [
      //     ListViewItem(),
      //     ListViewItem(),
      //     ListViewItem(),
      //     ListViewItem(),
      //     ListViewItem(),
      //     ListViewItem(),
      //   ],
      // ),
      appBar: AppBar(
        title: const Text("TO-DO"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
        // scrollDirection: Axis.horizontal, // TO SPECIFY THE AXIS
        itemCount: _posts.length,
        itemBuilder: ((context, index) {
          return ListViewItem(title: _posts[index]);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: createNewTaskNew,
        child: const Icon(Icons.add),
      ),
    );
  }
}
