import 'package:flutter/material.dart';
import 'package:glorify/screens/userEducation.dart';
import 'package:glorify/screens/userProfile.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/preview.dart';
import '../screens/userExpe.dart';

class Rail extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _RailState createState() => _RailState();
}

class _RailState extends State<Rail> {
  int selectedIndex = 0;
  bool extended = false;
  PageController pageController = PageController();
  // var a = Get.put(Functions());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        body: Row(children: [
          NavigationRail(
            backgroundColor: Color.fromARGB(255, 248, 247, 247),
            minWidth: 56,
            groupAlignment: 0.1,
            labelType: NavigationRailLabelType.all,
            selectedIconTheme: const IconThemeData(color: Colors.black),
            unselectedIconTheme:
                const IconThemeData(color: Color.fromARGB(255, 202, 202, 202)),
            // selectedLabelTextStyle: const TextStyle(
            //   color: Color.fromARGB(255, 179, 77, 77),
            //   fontSize: 13,
            //   letterSpacing: 0.5,
            // ),
            // unselectedLabelTextStyle: const TextStyle(
            //   fontSize: 13,
            //   letterSpacing: 0.8,
            //   color: Color.fromARGB(255, 190, 190, 190),
            // ),
            onDestinationSelected: (newIndex) {
              setState(() {
                selectedIndex = newIndex;
                pageController.animateToPage(newIndex,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              });
            },
            leading: Text(
              "N",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  letterSpacing: 0.4,
                  color: Colors.black),
            ),
            destinations: const [
              NavigationRailDestination(
                label: Text(""),
                icon: Icon(Icons.face),
              ),
              NavigationRailDestination(
                label: Text(""),
                icon: Icon(Icons.work),
              ),
              NavigationRailDestination(
                label: Text(""),
                icon: Icon(Icons.school_rounded),
              ),
              NavigationRailDestination(
                label: Text(""),
                icon: Icon(Icons.edit),
              ),
            ],
            selectedIndex: selectedIndex,
          ),
          Expanded(
              child: PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            children: [Profile(), Education(), Experence(), Preview()],
          ))
        ]));
  }
}

// TextField(
//   decoration: InputDecoration(
//     icon: Icon(Icons.print)
//   ),
// ),