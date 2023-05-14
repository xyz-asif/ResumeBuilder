import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/statemanagement.dart';

class Education extends StatelessWidget {
  Education({super.key});
  MyController b = Get.find();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 231, 231),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Education",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: h / 20,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: h / 30,
              ),
              TextField(
                onChanged: (value) {
                  b.addDegree(value);
                },
                decoration: InputDecoration(labelText: "Enter Your degree :"),
              ),
              SizedBox(
                height: h / 30,
              ),
              TextField(
                onChanged: (value) {
                  b.addCollege(value);
                },
                decoration: InputDecoration(labelText: "Enter Your college :"),
              ),
              SizedBox(
                height: h / 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        b.start(value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Start',
                        hintText: 'Enter Date',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        b.end(value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'End',
                        hintText: 'Enter Date',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h / 30,
              ),
              Text(
                "Your Top 5 Skills",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: h / 50,
                    letterSpacing: 0.4,
                    color: Colors.black),
              ),
              SizedBox(
                height: h / 30,
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
                        b.skillone(value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'skill ',
                        hintText: 'Enter Skill',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h / 30,
              ),
              Row(
                children: [
                  Text("#2"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        b.skilltwo(value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'skill',
                        hintText: 'Enter Skill',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h / 30,
              ),
              Row(
                children: [
                  Text("#3"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        b.skillthree(value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'skill',
                        hintText: 'Enter Skill',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h / 30,
              ),
              Row(
                children: [
                  Text("#4"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        b.skillfour(value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'skill',
                        hintText: 'Enter Skill',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h / 30,
              ),
              Text(
                "Languages",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: h / 50,
                    letterSpacing: 0.4,
                    color: Colors.black),
              ),
              SizedBox(
                height: h / 30,
              ),
              SizedBox(
                height: h / 30,
              ),
              Obx(() {
                return CheckboxListTile(
                  title: Text('English'),
                  value: b.english.value,
                  onChanged: (newValue) {
                    b.english.value = newValue ?? false;
                  },
                );
              }),
              SizedBox(
                height: h / 30,
              ),
              Obx(() {
                return CheckboxListTile(
                  title: Text('Telugu'),
                  value: b.telugu.value,
                  onChanged: (newValue) {
                    b.telugu.value = newValue ?? false;
                  },
                );
              }),
              SizedBox(
                height: h / 30,
              ),
              Obx(() {
                return CheckboxListTile(
                  title: Text('Hindi'),
                  value: b.hindi.value,
                  onChanged: (newValue) {
                    b.hindi.value = newValue ?? false;
                  },
                );
              }),
            ],
          ),
        ));
  }
}
