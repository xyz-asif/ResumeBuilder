import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/statemanagement.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Profile",
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
                  // todo add on press
                  InkWell(
                    onTap: () {
                      controller.pick();
                    },
                    child: Obx(() {
                      return Container(
                        height: h / 4,
                        width: w / 4,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 168, 168, 168),
                            shape: BoxShape.circle),
                        child: controller.path.isEmpty
                            ? Icon(Icons.photo)
                            : Image.file(
                                File(controller.path.value),
                                width: h / 8,
                                height: h / 8,
                              ),
                      );
                    }),
                  ),
                ],
              ),
              TextField(
                onChanged: (value) {
                  controller.naming(value);
                },
                decoration: InputDecoration(labelText: "Enter Your Name :"),
              ),
              SizedBox(
                height: h / 25,
              ),
              TextField(
                onChanged: (value) {
                  controller.titler(value);
                },
                decoration: InputDecoration(labelText: "Enter Your Number :"),
              ),
              SizedBox(
                height: h / 25,
              ),
              Text("Summery"),
              SizedBox(
                height: h / 50,
              ),
              Container(
                color: Color.fromARGB(255, 184, 184, 184),
                height: 100, //     <-- TextField expands to this height.
                child: TextField(
                  onChanged: (value) {
                    controller.addsummery(value);
                  },

                  maxLines: null, // Set this
                  expands: true, // and this
                  keyboardType: TextInputType.multiline,
                ),
              ),
              SizedBox(
                height: h / 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        controller.addEmail(value);
                      },
                      decoration: InputDecoration(labelText: ""),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_city),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        controller.addAddress(value);
                      },
                      decoration: InputDecoration(labelText: ""),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        controller.addPhone(value);
                      },
                      decoration: InputDecoration(labelText: ""),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
