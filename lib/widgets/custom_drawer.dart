import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_drawer_listTile.dart';
import 'package:myapp/widgets/our_sized_height.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffb356c8),
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setSp(
                150,
              ),
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Utsav Shrestha",
                      style: BoldinfoStyle,
                    ),
                    OurSizedHeight(),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setSp(
                            20,
                          ),
                          // vertical: 20,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CustomDrawerTile(
                    title: "Dashboard",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Feed",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Academic Performance",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Achievement",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Assignments",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Attendance",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Circulars",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Class Notes",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Clinic",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "EMM",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "EMM 2",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Event Calendar",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    title: "Feedback",
                    image: "images/face.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
