import 'package:flutter/material.dart';


// class BottomNavbar extends StatefulWidget {
//   const BottomNavbar({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavbarState createState() => _BottomNavbarState();
// }
//
// // ignore: camel_case_types
// class navbar extends StatefulWidget {
//   final int defaultSelectedIndex;
//   final Function(int) onChange;
//
//   // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
//   navbar({this.defaultSelectedIndex = 0, required this.onChange});
//
//   @override
//   State<navbar> createState() => _navbar();
// }
//
// // ignore: camel_case_types
// class _navbar extends State<navbar> {
//   int _selectedIndex = 0;
//
//   var defaultColor = const Color(0xFFaaaaaa);
//   var selectedColor = const Color(0xFF242F9B);
//
//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//
//     _selectedIndex = widget.defaultSelectedIndex;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height * 0.1,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.only(
//           topRight: Radius.circular(25),
//           topLeft: Radius.circular(25),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF242F9B).withOpacity(0.15),
//             spreadRadius: 1,
//             blurRadius: 10,
//             offset: const Offset(0, 0), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           BuildNav(0, "Home", "home"),
//           BuildNav(1, "Product", "product"),
//           BuildNav(2, "Trading", "trading"),
//           BuildNav(3, "Inventory", "inventory"),
//           BuildNav(4, "Master", "master"),
//           BuildNav(5, "Finance", "finance"),
//         ],
//       ),
//     );
//   }
//
//   // ignore: non_constant_identifier_names
//   Widget BuildNav(int index, String title, String image) {
//     return GestureDetector(
//       onTap: () {
//         widget.onChange(index);
//         setState(() {
//           _selectedIndex = index;
//         });
//       },
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 40,
//             width: 40,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 scale: 0.5,
//                 image: AssetImage(
//                     "assets/images/navbar-icon/$image${_selectedIndex == index ? "-" : "-in"}active.png"),
//               ),
//             ),
//           ),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 fontSize: 9,
//                 fontWeight: FontWeight.bold,
//                 color: _selectedIndex == index ? selectedColor : defaultColor),
//           ),
//         ],
//       ),
//     );
//   }
// }
