// ignore_for_file: avoid_print

//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kebs_1/HomePage.dart';
import 'package:kebs_1/dashboard.dart';
import 'package:kebs_1/homepage_1.dart';
//import 'package:kebs_1/HomePage.dart';
//import 'package:kebs_1/dashboard.dart';
import 'package:kebs_1/login.dart';
//import 'package:kebs_1/widgets/customAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red, primarySwatch: Colors.red),
      home: const CupertinoTextFieldDemo(),
      debugShowCheckedModeBanner: false,
      // routes: {
      //   HomePage: (context) => const HomePage()},
    );
  }
}

// signIn(String username, password) async {
//     Map data = {'email': email, 'password': password};
//    //in above line 'username' and 'password' are the end Points of the API
//     var body = json.encode(data);
//     var jsonData;
//     var response = await http.post(
//       'http://localhost:3001/signup',
//       body: body,
//       headers: {
//         'Content-Type': 'application/json',
//         'accept': 'application/json',
//         'connection': 'keep-alive'
//         'Access-Control-Allow-Origin': '*', // Required for CORS support to work
//       },
//     );
//     if (response.statusCode == 200) {
//       jsonData = json.decode(response.body);
//       if (jsonData != null) {
//           print('Login Successfull...!');
//           // Or add path to your home page using await method
//       }
//     } else {
//         print('Wrong Credentials...!');

//     }
//   }

// ignore: must_be_immutable
// class CupertinoTextFieldDemo extends StatefulWidget {
//   const CupertinoTextFieldDemo({super.key});

//   @override
//   State<CupertinoTextFieldDemo> createState() => _CupertinoTextFieldDemoState();
// }

// class _CupertinoTextFieldDemoState extends State<CupertinoTextFieldDemo> {
//   //const CupertinoTextFieldDemo({Key? key}) : super(key: key);
//   var emailController = TextEditingController();
//   var passController = TextEditingController();

//   // ignore: prefer_typing_uninitialized_variables
//   //var password;

//   // final TextEditingController emailController = TextEditingController();

//   // final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     //final localizations = GalleryLocalizations.of(context)!;
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(
//         automaticallyImplyLeading: false,
//         //middle: Text(localizations.demoCupertinoTextFieldTitle),
//       ),
//       child: SafeArea(
//         child: ListView(
//           restorationId: 'text_field_demo_list_view',
//           padding: const EdgeInsets.all(16),
//           children: [
//             Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: Image.asset("assets/kebs_logo1.png")),

//             // const Padding(
//             //     padding: EdgeInsets.symmetric(vertical: 28),
//             //     child: Text(
//             //       'LOGIN PAGE',
//             //       style: TextStyle(
//             //           fontSize: 40,
//             //           fontStyle: FontStyle.italic,
//             //           color: Colors.amber,
//             //           fontFamily: ''),
//             //     )),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 18),
//               child: CupertinoTextField(
//                 controller: emailController,
//                 textInputAction: TextInputAction.next,
//                 restorationId: 'email_address_text_field',
//                 placeholder: "Email",
//                 keyboardType: TextInputType.emailAddress,
//                 clearButtonMode: OverlayVisibilityMode.editing,
//                 autocorrect: false,
//                 // onChanged: ((value) {
//                 //   email = value;
//                 // }),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 25),
//               child: CupertinoTextField(
//                 controller: passController,
//                 textInputAction: TextInputAction.next,
//                 restorationId: 'login_password_text_field',
//                 placeholder: "Password",
//                 clearButtonMode: OverlayVisibilityMode.editing,
//                 obscureText: true,
//                 autocorrect: false,
//                 // onChanged: ((value) {
//                 //   password = value;
//                 // }),
//               ),
//             ),
//             Padding(
//                 padding: const EdgeInsets.all(30),
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.red,
//                         fixedSize: const Size(10, 50),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25))),
//                     onPressed: () {
//                       signup();
//                       // signup(emailController.text.toString(),
//                       //     passwordController.text.toString(), context);
//                       // print(email);
//                       // print(password);
//                       //Navigator.pushNamed(context, HomePage.id);
//                       // Navigator.of(context).push(
//                       // MaterialPageRoute(builder: (context) => HomePage()));

//                       // Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //         builder: (context) => const HomePage()));
//                     },
//                     child: const Text("Submit")))
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> signup() async {
//     if (passController.text.isNotEmpty && emailController.text.isNotEmpty) {
//       var jsonData;
//       var response = await http.post(Uri.parse("http://localhost:3001/signup"),
//           body: ({
//             'email': emailController.text,
//             'password': passController.text
//           }));
//       if (response.statusCode == 200) {
//         jsonData = jsonDecode(response.body);
//         // ignore: use_build_context_synchronously
//         print(jsonData);
//         print(jsonData['authentication']);
//         if (jsonData != null && jsonData['authentication'] == true) {
//           print('Login Successfull...!');
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const HomePage()));
//         } else {
//           ScaffoldMessenger.of(context)
//               .showSnackBar(const SnackBar(content: Text('not valid')));
//           print('Wrong Credentials.!');
//         }
//       } else {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(const SnackBar(content: Text('not valid')));
//         print('Wrong Credentials.!');
//       }
//       //   if (response.statusCode == 200) {
//       //     Navigator.push(
//       //         context, MaterialPageRoute(builder: (context) => const HomePage()));
//       //   } else {
//       //     ScaffoldMessenger.of(context)
//       //         .showSnackBar(const SnackBar(content: Text("Invalid Credentials")));
//       //   }
//       // } else {
//       //   ScaffoldMessenger.of(context).showSnackBar(
//       //       const SnackBar(content: Text("blank field not allowed")));
//       // }
//     }
//   }
// }

//  Future<void> signup(String email, password, BuildContext context) async {
//   var url = 'http://localhost:3001/signup';

//   // ignore: prefer_typing_uninitialized_variables
//   var jsonData;
//   final response = await http.post(
//     Uri.parse(url),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'email': email,
//       'password': password,
//     }),
//   );
//   if (response.statusCode == 200) {
//     jsonData = jsonDecode(response.body);
//     // ignore: use_build_context_synchronously
//     print(jsonData);
//     print(jsonData['authentication']);
//     if (jsonData != null && jsonData['authentication'] == true) {
//       print('Login Successfull...!');
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => const HomePage()));
//     } else {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(const SnackBar(content: Text('not valid')));
//       print('Wrong Credentials.!');
//     }
//   } else {
//     ScaffoldMessenger.of(context)
//         .showSnackBar(const SnackBar(content: Text('not valid')));
//     print('Wrong Credentials.!');
//   }
//   print(response.body);

//   // if (response.statusCode == 201) {
//   //   // If the server did return a 201 CREATED response,
//   //   // then parse the JSON.
//   //   // return Album.fromJson(jsonDecode(response.body));
//   // } else {
//   //   // If the server did not return a 201 CREATED response,
//   //   // then throw an exception.
//   //   throw Exception('Failed to create album.');
//   // }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   static const String id = "Homepage";
//   @override
//   Widget build(BuildContext context) {
//     return const Text("Welcome");
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
