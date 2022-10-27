// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         actions: [
//           PopupMenuButton<int>(
//             //padding: EdgeInsets.all(50),
//             itemBuilder: (context) => [
//               // popupmenu item 1
//               PopupMenuItem(
//                 value: 1,
//                 child: Row(
//                   children: const [
//                     Icon(Icons.star),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text("Project")
//                   ],
//                 ),
//                 onTap: () {
//                   // Navigator.push(context,
//                   //     MaterialPageRoute(builder: (context) => const Project()));
//                 },
//               ),

//               PopupMenuItem(
//                 value: 2,
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Row(
//                   children: const [
//                     Icon(Icons.logout_outlined),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text("LogOut"),
//                     // ElevatedButton(
//                     //     onPressed: () {
//                     //       Navigator.pop(context);
//                     //     },
//                     //     child: Text("Project"))
//                   ],
//                 ),
//               ),
//             ],
//             offset: const Offset(0, 50),
//             color: Colors.grey,
//             elevation: 2,
//           ),
//           //IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           // separatorBuilder: (context, index) => Divider(color:Colors.black),
//           // padding: EdgeInsets.zero,
//           // itemBuilder: (context, index) => const Padding(padding: EdgeInsets.all(10),child: Center(
//           //   child: Text("hehe"),

//           // ),),
//           children: [
//             const DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                 ),
//                 child: Center(
//                   child: Text(
//                     'KEBS',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 )),
//             ListTile(
//               title: const Text('Project'),
//               onTap: () {
//                 // Navigator.of(context).pop();
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => const Project()));
//               },
//             ),
//             ListTile(
//               title: const Text('Timesheet'),
//               onTap: () {},
//             ),
//             ListTile(
//               iconColor: Colors.red,
//               title: const Text('Report'),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//       body: CustomScrollView(
//         physics: ClampingScrollPhysics(),
//         slivers: <Widget>[_buildHeader(screenHeight), _buildrest(screenHeight)],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           //selectedItemColor: kCupertinoModalBarrierColor,
//           backgroundColor: Colors.white12,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.timelapse), label: 'Timesheet'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.work_history_outlined), label: 'Project'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), label: 'Settings')
//           ]),
//     );
//   }

//   SliverToBoxAdapter _buildHeader(double screenHeight) {
//     return SliverToBoxAdapter(
//       child: Container(
//         padding: const EdgeInsets.all(70.0),
//         decoration: const BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(40.0),
//               bottomRight: Radius.circular(40.0),
//             )),
//         child: Column(
//           children: const <Widget>[
//             Text(
//               'Welcome To KEBS',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 30.0),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   SliverToBoxAdapter _buildrest(double screenHeight) {
//     return SliverToBoxAdapter(
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         //color: Colors.orange,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Card(
//                   child: Container(
//                       decoration: const BoxDecoration(
//                           color: Colors.brown,
//                           borderRadius: BorderRadius.all(Radius.circular(15))),
//                       height: 150,
//                       width: 100,

//                       // color: Colors.brown,
//                       //padding: const EdgeInsets.all(50),
//                       child: const Center(
//                         child: Text(
//                           "Project",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       )),
//                 ),
//                 Card(
//                   child: Container(
//                       decoration: const BoxDecoration(
//                           color: Colors.brown,
//                           borderRadius: BorderRadius.all(Radius.circular(15))),
//                       height: 150,
//                       width: 100,

//                       // color: Colors.brown,
//                       //padding: const EdgeInsets.all(50),
//                       child: const Center(
//                         child: Text(
//                           "Project",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       )),
//                 ),
//                 Card(
//                   child: Container(
//                       decoration: const BoxDecoration(
//                           color: Colors.brown,
//                           borderRadius: BorderRadius.all(Radius.circular(15))),
//                       height: 150,
//                       width: 100,

//                       // color: Colors.brown,
//                       //padding: const EdgeInsets.all(50),
//                       child: const Center(
//                         child: Text(
//                           "Project",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       )),
//                 ),

                
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
