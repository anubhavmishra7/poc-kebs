import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
//import 'package:flutter/foundation.dart';
import 'package:kebs_1/models/project.dart';
import 'package:kebs_1/pages/more_options_page.dart';
import 'package:kebs_1/pages/project_page.dart';
import 'package:kebs_1/pages/timesheet-page.dart';
import 'package:kebs_1/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _fileText = "";
  String _fileText1 = "";
  List pages = [HomePage(), ProjectManagement(), MoreOptions(), TimeSheet()];
  //static const String id = "Homepage";
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          PopupMenuButton<int>(
            //padding: EdgeInsets.all(50),
            itemBuilder: (context) => [
              // popupmenu item 1
              PopupMenuItem(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Project()));
                },
                value: 1,
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Project")
                  ],
                ),
              ),

              PopupMenuItem(
                value: 2,
                // onTap: () {
                //   Navigator.pop(context);
                // },
                child: Row(
                  children: const [
                    Icon(
                      Icons.logout_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("LogOut"),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pop(context);
                    //     },
                    //     child: Text("Project"))
                  ],
                ),
              ),
            ],
            offset: const Offset(0, 50),
            color: const Color.fromARGB(220, 251, 249, 249),
            elevation: 2,
          ),
          //IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // separatorBuilder: (context, index) => Divider(color:Colors.black),
          // padding: EdgeInsets.zero,
          // itemBuilder: (context, index) => const Padding(padding: EdgeInsets.all(10),child: Center(
          //   child: Text("hehe"),

          // ),),
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    'KEBS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
            ListTile(
              title: const Text('Project'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Project()));
              },
            ),
            ListTile(
              title: const Text('Timesheet'),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.red,
              title: const Text('Report'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildrest(screenHeight),
          _buildmore(screenHeight)
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     onTap: onTap,
      //     selectedFontSize: 0,
      //     unselectedFontSize: 0,
      //     currentIndex: currentIndex,
      //     selectedItemColor: Colors.red,
      //     unselectedItemColor: Colors.grey.shade400,
      //     type: BottomNavigationBarType.shifting,
      //     //selectedItemColor: kCupertinoModalBarrierColor,
      //     backgroundColor: Colors.white24,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.timelapse), label: 'Timesheet'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.work_history_outlined), label: 'Project'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.settings), label: 'Settings')
      //     ]),

      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(56.0),
      //     child: Column(
      //       children: [
      //         Card(
      //           child: Container(
      //             color: Colors.red,
      //             padding: const EdgeInsets.all(50),
      //             child: Column(
      //               children: const [Text("heyaa"), Text("hejdnvk")],
      //             ),
      //           ),
      //         ),
      //         Card(
      //           child: Container(
      //             color: Colors.red,
      //             padding: const EdgeInsets.all(50),
      //             child: Column(
      //               children: const [Text("heya"), Text("hehdfvdfv")],
      //             ),
      //           ),
      //         ),
      //         ElevatedButton(
      //             onPressed: () {
      //               _pickFile();
      //               // final result = await FilePicker.platform.pickFiles();
      //               // if (result == null) return;

      //               // final file = result.files.first;
      //               // openFile(file);
      //             },
      //             child: const Text('Upload File')),
      //         Text(_fileText),
      //         ElevatedButton(
      //             onPressed: () {
      //               _pickMultipleFiles();
      //             },
      //             child: const Text('Upload File')),
      //         Text(_fileText1),
      //       ],
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     //selectedItemColor: kCupertinoModalBarrierColor,
      //     backgroundColor: Colors.white12,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.timelapse), label: 'Timesheet'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.work_history_outlined), label: 'Project'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.settings), label: 'Settings')
      //     ]),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(70.0),
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            )),
        child: Column(
          children: const <Widget>[
            Text(
              'Welcome To KEBS',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            SizedBox(
              height: 40,
            ),
            SearchTextField()
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildrest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        //color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  child: Container(
                      decoration: const BoxDecoration(
                          //color: Colors.brown,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 150,
                      width: 100,

                      // color: Colors.brown,
                      //padding: const EdgeInsets.all(50),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/mis.png',
                              scale: 1,
                            ),
                            const Text(
                              "Project",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                      )),
                ),
                Card(
                  child: Container(
                      decoration: const BoxDecoration(
                          // color: Colors.brown,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 150,
                      width: 100,

                      // color: Colors.brown,
                      //padding: const EdgeInsets.all(50),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/time_stats.png',
                              scale: 1,
                            ),
                            const Text(
                              "Timesheet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                      )),
                ),
                Card(
                  child: Container(
                      decoration: const BoxDecoration(
                          // color: Colors.brown,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 150,
                      width: 100,

                      // color: Colors.brown,
                      //padding: const EdgeInsets.all(50),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/mis.png',
                              scale: 1,
                            ),
                            const Text(
                              "Resource",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                      )),
                ),
                // Card(
                //   child: Container(
                //       decoration: const BoxDecoration(
                //           // color: Colors.brown,
                //           borderRadius: BorderRadius.all(Radius.circular(15))),
                //       height: 150,
                //       width: 100,

                //       // color: Colors.brown,
                //       //padding: const EdgeInsets.all(50),
                //       child: Center(
                //         child: Column(
                //           children: <Widget>[
                //             Image.asset(
                //               'assets/mis.png',
                //               scale: 1,
                //             ),
                //             const Text(
                //               "Reports",
                //               textAlign: TextAlign.center,
                //               style: TextStyle(
                //                   fontSize: 18,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.black38),
                //             ),
                //           ],
                //         ),
                //       )),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildmore(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(20.0),
        //color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      _pickFile();
                      // final result = await FilePicker.platform.pickFiles();
                      // if (result == null) return;

                      // final file = result.files.first;
                      // openFile(file);
                    },
                    child: const Text('Upload File')),
                Text(_fileText),
                ElevatedButton(
                    onPressed: () {
                      _pickMultipleFiles();
                    },
                    child: const Text('Upload File')),
                Text(_fileText1),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.any);

    if (result != null && result.files.single.path != null) {
      PlatformFile file = result.files.first;
      debugPrint(file.name);
      print(file.size);
      debugPrint(file.extension);

      //_fileText = file.name;
      //File _file = File(result.files.single.bytes!);
      setState(() {
        _fileText = file.name;

        // file;
      });
    } else {}
  }

  void _pickMultipleFiles() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    try {
      if (result != null) {
        List<File> files = result.paths.map((path) => File(path!)).toList();
        setState(() {
          _fileText1 = files.toString();
        });
      } else {}
    } catch (e) {
      print(e);
    }
  }
}
