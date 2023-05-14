import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/statemanagement.dart';

class Experence extends StatelessWidget {
  Experence({super.key});
  MyController b = Get.find();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Container()),
                Text(
                  "Experience",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: h / 20,
                      letterSpacing: 0.4,
                      color: Colors.black),
                )
              ],
            ),
            TextField(
              onChanged: (value) {
                b.job = value.toString() as RxString;
              },
              decoration: InputDecoration(labelText: "Last Job :"),
            ),
            TextField(
              onChanged: (value) {
                b.company = value.toString() as RxString;
              },
              decoration: InputDecoration(labelText: "company :"),
            ),
            Text("Job Summery"),
            Container(
              color: Color.fromARGB(255, 184, 184, 184),
              height: 100, //     <-- TextField expands to this height.
              child: TextField(
                onChanged: (value) {
                  b.jobSummery = value.toString() as RxString;
                },

                maxLines: null, // Set this
                expands: true, // and this
                keyboardType: TextInputType.multiline,
              ),
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Text(
                  "Projects",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: h / 20,
                      letterSpacing: 0.4,
                      color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Text("#1"),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      b.projectone = value.toString() as RxString;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Project',
                      hintText: 'Details',
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("#1"),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      b.projecttwo = value.toString() as RxString;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Project',
                      hintText: 'Details',
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("#1"),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      b.projectthree = value.toString() as RxString;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Project',
                      hintText: 'Details',
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
