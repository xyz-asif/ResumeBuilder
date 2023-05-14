import 'dart:io';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import '../controller/statemanagement.dart';

MyController b = Get.find();

TemplateData data = TemplateData(
    fullName: b.userName.toString(),
    currentPosition: b.title.toString(),
    street: '56B Wellington',
    address: b.address.toString(),
    country: 'India',
    email: b.email.toString(),
    phoneNumber: b.phone.toString(),
    bio: b.summery.toString(),
    experienceTitle: b.job.toString(),
    experienceLocation: b.company.toString(),
    experiencePeriod: 'Aug 2021 - Dec 2023',
    experiencePlace: 'Andhra Pradesh',
    experienceDescription: b.jobSummery.toString(),
    education: b.degree.toString(),
    image:
        'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
