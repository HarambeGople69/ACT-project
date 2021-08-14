import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/pages/book_fee_payment/book_fee_payment.dart';
import 'package:myapp/screens/pages/change_password/change_password.dart';
import 'package:myapp/screens/pages/clinic/clinic.dart';
import 'package:myapp/screens/pages/emm/emm.dart';
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
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ChangePassword();
                        }));
                      },
                      child: Text(
                        "Utsav Shrestha",
                        style: BoldinfoStyle,
                      ),
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
                    function: () {
                      print("object");
                    },
                    title: "Dashboard",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Feed",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Academic Performance",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Achievement",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Assignments",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Attendance",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Circulars",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Class Notes",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Clinic();
                      }));
                    },
                    title: "Clinic",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EMM();
                      }));
                    },
                    title: "EMM",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "EMM 2",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Event Calendar",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Principal's Message",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "PTM Feedback",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Quick Contacts",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Reference Material",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "School Bus Tracking",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Student Corner",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Student Profile",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Teacher Communication",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Timetable",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Robotics Registration Form",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BooKFeePayment();
                      }));
                    },
                    title: "Book Fee Payment",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChangePassword();
                      }));
                    },
                    title: "Change Password",
                    image: "images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Logout",
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
