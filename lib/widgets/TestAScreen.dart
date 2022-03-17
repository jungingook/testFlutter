// import 'package:flutter/material.dart';
//
// class Child extends StatefulWidget {
//   SearchBar();
//
//   @override
//   ChildState createState() => ChildState();
// }
//
// class ChildState extends State<Child> {
//   @override
//   Widget build(BuildContext context) {
//     ParentState parent = context.findAncestorStateOfType<ParentState>();
//
//     return BlaBlaButton(text: Text('자식'), onTap: () {
//       parent.setState() {
//         parent.page += 1;
//       }
//     });
//   }
// }