import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // height: 70, width: double.maxFinite,
        const CupertinoSearchTextField(
      // decoration: BoxDecoration(),
      backgroundColor: Colors.white70,
      //onChanged: (){},
    );
    // TextFormField(
    //   decoration: InputDecoration(
    //     prefixIcon: const Icon(
    //       Icons.search,
    //       color: Colors.grey,
    //       size: 28,
    //     ),
    //     suffixIcon: const Icon(
    //       Icons.mic,
    //       color: Colors.grey,
    //       size: 28,
    //     ),
    //     floatingLabelBehavior: FloatingLabelBehavior.never,
    //     labelText: "Search Here",
    //     labelStyle: const TextStyle(color: Colors.grey),
    //     filled: true,
    //     fillColor: Colors.white,
    //     border: OutlineInputBorder(
    //       borderSide: BorderSide(color: Colors.white),
    //       borderRadius: BorderRadius.circular(30),
    //     ),
    //   ),
    // ),
  }
}
