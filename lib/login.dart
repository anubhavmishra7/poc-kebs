import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:kebs_1/HomePage.dart';
import 'dart:convert';

import 'package:kebs_1/dashboard.dart';
import 'package:kebs_1/homepage_1.dart';

class CupertinoTextFieldDemo extends StatefulWidget {
  const CupertinoTextFieldDemo({super.key});

  @override
  State<CupertinoTextFieldDemo> createState() => _CupertinoTextFieldDemoState();
}

class _CupertinoTextFieldDemoState extends State<CupertinoTextFieldDemo> {
  //const CupertinoTextFieldDemo({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passController = TextEditingController();
  bool _isLoading = false;

  // ignore: prefer_typing_uninitialized_variables
  //var password;

  // final TextEditingController emailController = TextEditingController();

  // final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final localizations = GalleryLocalizations.of(context)!;
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        //middle: Text(localizations.demoCupertinoTextFieldTitle),
      ),
      child: SafeArea(
        child: ListView(
          restorationId: 'text_field_demo_list_view',
          padding: const EdgeInsets.all(16),
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset("assets/kebs_logo1.png")),

            // const Padding(
            //     padding: EdgeInsets.symmetric(vertical: 28),
            //     child: Text(
            //       'LOGIN PAGE',
            //       style: TextStyle(
            //           fontSize: 40,
            //           fontStyle: FontStyle.italic,
            //           color: Colors.amber,
            //           fontFamily: ''),
            //     )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: CupertinoTextField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                restorationId: 'email_address_text_field',
                placeholder: "Email",
                keyboardType: TextInputType.emailAddress,
                clearButtonMode: OverlayVisibilityMode.editing,
                autocorrect: false,
                // onChanged: ((value) {
                //   email = value;
                // }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: CupertinoTextField(
                controller: passController,
                textInputAction: TextInputAction.next,
                restorationId: 'login_password_text_field',
                placeholder: "Password",
                clearButtonMode: OverlayVisibilityMode.editing,
                obscureText: true,
                autocorrect: false,
                // onChanged: ((value) {
                //   password = value;
                // }),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: const Size(10, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      setState(() {
                        _isLoading = true;
                      });
                      signup();
                      // signup(emailController.text.toString(),
                      //     passwordController.text.toString(), context);
                      // print(email);
                      // print(password);
                      //Navigator.pushNamed(context, HomePage.id);
                      // Navigator.of(context).push(
                      // MaterialPageRoute(builder: (context) => HomePage()));

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const HomePage()));
                    },
                    child: const Text("SignIn"))),
            //OutlinedButton(onPressed: () {}, child: Text("heheh")),
            
            TextButton(
                // style: TextButton.styleFrom(maximumSize: Size.fromWidth(4)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DashBoard()));
                },
                child: const Text(
                  "New User?SignUp",
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }

  Future<void> signup() async {
    if (passController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var jsonData;
      var response = await http.post(
        Uri.parse("http://localhost:3001/signup"),
        //Uri.parse("https://10.0.2.2:3001/signup"),

        body: ({
          'email': emailController.text,
          'password': passController.text
        }),

        // headers: {
        //   'Content-Type': 'application/json',
        //   'accept': 'application/json',
        //   'connection': 'keep-alive'
        //   //'Access-Control-Allow-Origin': '*', // Required for CORS support to work
        // },
      );

      if (response.statusCode == 200) {
        jsonData = jsonDecode(response.body);
        // ignore: use_build_context_synchronously
        print(jsonData);
        print(jsonData['authentication']);

        if (jsonData != null && jsonData['authentication'] == true) {
          debugPrint('Login Successfull...!');
          Navigator.of(context).pop();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewHome()));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('not valid')));
          debugPrint('Wrong Credentials.!');
        }
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('not valid')));
      debugPrint('Wrong Credentials.!');
      //   if (response.statusCode == 200) {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => const HomePage()));
      //   } else {
      //     ScaffoldMessenger.of(context)
      //         .showSnackBar(const SnackBar(content: Text("Invalid Credentials")));
      //   }
      // } else {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(content: Text("blank field not allowed")));
      // }
    }
  }
}
