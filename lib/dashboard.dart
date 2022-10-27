import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kebs_1/HomePage.dart';
import 'package:kebs_1/login.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Colors.red,
                gradient: LinearGradient(
                    colors: [(Color(0xFFFF9000)), (Color(0xFFFF9000))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "    Create a new Account",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const CupertinoTextField(
            placeholder: "Name",
            textInputAction: TextInputAction.next,
            clearButtonMode: OverlayVisibilityMode.editing,
          ),
          const SizedBox(
            height: 40,
          ),
          const CupertinoTextField(
            placeholder: "Email",
            textInputAction: TextInputAction.next,
            clearButtonMode: OverlayVisibilityMode.editing,
          ),
          const SizedBox(
            height: 40,
          ),
          const CupertinoTextField(
            placeholder: "Password",
            obscureText: true,
            textInputAction: TextInputAction.next,
            clearButtonMode: OverlayVisibilityMode.editing,
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF9000),
                  fixedSize: const Size(140, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              onPressed: () {
                setState(() {
                  var _isLoading = true;
                });
                const HomePage();
              },
              child: const Text("SignUp"))
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context) => const HomePage()));
          //   },
          //   child: Container(
          //     decoration: const BoxDecoration(color: Colors.red),
          //     height: 30,
          //     width: 90,
          //     child: const Text("SignUp"),
          //   ),
          // )
        ],
      )),
    );
  }
}
