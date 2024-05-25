// ignore_for_file: prefer_const_constructors
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:student_getx/other/color.dart';


void bottomSheet(context, int id, String photo, String name,
      String gender,
       String hub, String dob, String mobile, String email) {
  showModalBottomSheet(
     backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext builder) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
              color: Color(0xFF2E294E),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          height: 1000,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: FileImage(File(photo)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                name.toUpperCase(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: CustomColor.getColor(),),
              ),
              SizedBox(
                height: 10,
              ),
             
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('class : $hub',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400,color: CustomColor.getColor(),))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Date of Birth: ${DateFormat('dd-MMM-yyyy').format(DateTime.parse(dob))}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400,color: CustomColor.getColor(),))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Mobile: $mobile',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400,color: CustomColor.getColor(),))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('email : $email',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400,color: CustomColor.getColor(),))),
              ),
            ],
          ),
        );
      });
}