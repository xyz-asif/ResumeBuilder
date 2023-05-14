import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MyController extends GetxController {
  // first Screen varibles
  var path = "".obs;

  void pick() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      path.value = picked.path;
    } else {
      Get.snackbar("NO Image Selectd", " no");
    }
  }

  var userName = "Not Defined".obs;

  void naming(var value) {
    userName.value = value;
  }

  var title = "Not Defined".obs;
  void titler(var value) {
    title.value = value;
  }

  var summery = "Not Defined".obs;
  void addsummery(var value) {
    summery.value = value;
  }

  var email = "Not Defined".obs;
  void addEmail(var value) {
    email.value = value;
  }

  var phone = "Not Defined".obs;
  void addPhone(var value) {
    phone.value = value;
  }

  var address = "Not Defined".obs;
  void addAddress(var value) {
    address.value = value;
  }

  // first Screen varibles
  var degree = "Not Defined".obs;
  void addDegree(var value) {
    degree.value = value;
  }

  var college = "Not Defined".obs;
  void addCollege(var value) {
    college.value = value;
  }

  var start = "Not Defined".obs;
  void addStart(var value) {
    start.value = value;
  }

  var end = "Not Defined".obs;
  void adEnd(var value) {
    end.value = value;
  }

  var skillone = "Not Defined".obs;
  void addOne(var value) {
    skillone.value = value;
  }

  var skilltwo = "Not Defined".obs;
  void addTwo(var value) {
    skilltwo.value = value;
  }

  var skillthree = "Not Defined".obs;
  void addtheree(var value) {
    skillthree.value = value;
  }

  var skillfour = "Not Defined".obs;
  void addfour(var value) {
    skillfour.value = value;
  }

  var skillfive = "Not Defined".obs;
  void addfive(var value) {
    skillfive.value = value;
  }

// second
  RxBool english = false.obs;
  RxBool hindi = false.obs;
  RxBool telugu = false.obs;

// third screen
  var job = "Not Defined".obs;
  void addjob(var value) {
    job.value = value;
  }

  var company = "Not Defined".obs;
  void addCompany(var value) {
    company.value = value;
  }

  var jobSummery = "Not Defined".obs;
  void addJobsummery(var value) {
    jobSummery.value = value;
  }

  var projectone = "Not Defined".obs;
  void addProjectone(var value) {
    projectone.value = value;
  }

  var projecttwo = "Not Defined".obs;
  void addprojectwo(var value) {
    projecttwo.value = value;
  }

  var projectthree = "Not Defined".obs;
  void addProjectthree(var value) {
    projectthree.value = value;
  }

  void changeName() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          naming(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deleteName() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        userName.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

// addresss
  void changeAddress() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          addAddress(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deleteAddress() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        address.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

// addresss

// email
  void changeEmail() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          addEmail(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deleteEmail() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        email.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }
// eamil

// title

  void changeTitle() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          titler(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deletetitle() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        title.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

// title

// sills
  void skill1() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          addOne(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deletesill1() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        skillone.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }
// some

  void skill2() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          addTwo(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deletesill2() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        skilltwo.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void skill3() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          addtheree(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deletesill3() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        skillthree.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void skill4() {
    Get.defaultDialog(
      title: 'Edit',
      content: TextField(
        onChanged: (value) {
          addfour(value);
        },
      ),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }

  void deletesill4() {
    Get.defaultDialog(
      title: 'Edit',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        skillfour.value = "";
        // Do something when the user clicks the OK button
        Get.back(); // Close the dialog
      },
    );
  }
}
