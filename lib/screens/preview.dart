import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:glorify/screens/pdf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/statemanagement.dart';

class Preview extends StatelessWidget {
  Preview({super.key});
  MyController b = Get.find();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Preview",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: h / 20,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: h / 35,
              ),
              Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text("${b.userName.toString()}");
                  }),
                  IconButton(
                      onPressed: () {
                        b.changeName();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deleteName();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text("${b.email.toString()}");
                  }),
                  IconButton(
                      onPressed: () {
                        b.changeEmail();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deleteEmail();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text(b.address.toString());
                  }),
                  IconButton(
                      onPressed: () {
                        b.changeAddress();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deleteAddress();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text(b.title.toString());
                  }),
                  IconButton(
                      onPressed: () {
                        b.changeTitle();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deletetitle();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              Text("Skills", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text(b.skillone.toString());
                  }),
                  IconButton(
                      onPressed: () {
                        b.skill1();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deletesill1();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text(b.skilltwo.toString());
                  }),
                  IconButton(
                      onPressed: () {
                        b.skill2();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deletesill2();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text(b.skillthree.toString());
                  }),
                  IconButton(
                      onPressed: () {
                        b.skill3();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deletesill3();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return Text(b.skillfour.toString());
                  }),
                  IconButton(
                      onPressed: () {
                        b.skill4();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        b.deletesill4();
                      },
                      icon: Icon(Icons.delete))
                ],
              )),
              SizedBox(
                height: h / 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyResumePage()),
                    );
                  },
                  child: Text("To Pdf"))
            ],
          ),
        ),
      ),
    );
  }
}

class MyResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
      ),
      body: FlutterResumeTemplate(
        data: data,
        templateTheme: TemplateTheme.modern,
        mode: TemplateMode.shakeEditAndSaveMode,
        onSaveResume: (globalKey) async =>
            await PdfHandler().createResume(globalKey),
      ),
    );
  }
}
