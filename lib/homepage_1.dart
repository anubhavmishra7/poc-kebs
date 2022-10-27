//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:kebs_1/HomePage.dart';
import 'package:kebs_1/pages/more_options_page.dart';
import 'package:kebs_1/pages/project_page.dart';
import 'package:kebs_1/pages/timesheet-page.dart';

class NewHome extends StatefulWidget {
  NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  List pages = [
    const HomePage(),
    const TimeSheet(),
    const ProjectManagement(),
    const MoreOptions()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          currentIndex: currentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey.shade400,
          type: BottomNavigationBarType.fixed,
          //selectedItemColor: kCupertinoModalBarrierColor,
          backgroundColor: Colors.white24,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.timelapse), label: 'Timesheet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.work_history_outlined), label: 'Project'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    );
  }
}
