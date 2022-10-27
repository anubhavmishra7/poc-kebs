import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      // drawer: Drawer(
      //   child: ListView.separated(
      //     separatorBuilder: (BuildContext context, int index) =>
      //         const Divider(),
      //     itemBuilder: (BuildContext context, int index) {
      //       return ListTile(
      //         title: Text('item $index'),
      //       );
      //     },
      //     itemCount: 3,
      //   ),
      // ),
    );
  }
}
