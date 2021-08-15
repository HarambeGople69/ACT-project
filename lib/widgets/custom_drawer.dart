import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/pages/academic_performance/academic_performance.dart';
import 'package:myapp/screens/pages/book_fee_payment/book_fee_payment.dart';
import 'package:myapp/screens/pages/change_password/change_password.dart';
import 'package:myapp/screens/pages/circular/circular.dart';
import 'package:myapp/screens/pages/class_notes/class_notes.dart';
import 'package:myapp/screens/pages/clinic/clinic.dart';
import 'package:myapp/screens/pages/dashboard.dart';
import 'package:myapp/screens/pages/emm/emm.dart';
import 'package:myapp/screens/pages/emm2/emm2.dart';
import 'package:myapp/screens/pages/event_calender/event_calender.dart';
import 'package:myapp/screens/pages/fee/fee.dart';
import 'package:myapp/screens/pages/feedback/feedback.dart';
import 'package:myapp/screens/pages/gallery/gallery.dart';
import 'package:myapp/screens/pages/robotics_registration_form/robotics_registration_form.dart';
import 'package:myapp/screens/pages/student_corner/student_corner.dart';
import 'package:myapp/screens/pages/student_profile/student_profile.dart';
import 'package:myapp/screens/pages/teacher_communication/teacher_communication.dart';
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DashBoard();
                      }));
                    },
                    title: "Dashboard",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Feed",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AcademicPerformance();
                      }));
                    },
                    title: "Academic Performance",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Achievement",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Assignments",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Attendance",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CircularPage();
                      }));
                    },
                    title: "Circulars",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ClassNotes();
                      }));
                    },
                    title: "Class Notes",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Clinic();
                      }));
                    },
                    title: "Clinic",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EMM();
                      }));
                    },
                    title: "EMM",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EMM2();
                      }));
                    },
                    title: "EMM 2",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EventCalender();
                      }));
                    },
                    title: "Event Calendar",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FeedBack();
                      }));
                    },
                    title: "Feedback",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Fee();
                      }));
                    },
                    title: "Fee",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Gallery();
                      }));
                    },
                    title: "Gallery",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return FeedBack();
                      // }));
                    },
                    title: "Flora Snap",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return FeedBack();
                      // }));
                    },
                    title: "Library",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return FeedBack();
                      // }));
                    },
                    title: "News",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return FeedBack();
                      // }));
                    },
                    title: "Notification",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return FeedBack();
                      // }));
                    },
                    title: "Online exam",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Principal's Message",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "PTM Feedback",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Quick Contacts",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Reference Material",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "School Bus Tracking",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return StudentCorner();
                      }));
                    },
                    title: "Student Corner",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return StudentProfile();
                      }));
                    },
                    title: "Student Profile",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return TeacherCommunication();
                      }));
                    },
                    title: "Teacher Communication",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Timetable",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RoboticsRegistrationForm();
                      }));
                    },
                    title: "Robotics Registration Form",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BooKFeePayment();
                      }));
                    },
                    title: "Book Fee Payment",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChangePassword();
                      }));
                    },
                    title: "Change Password",
                    image: "assets/images/face.jpg",
                  ),
                  CustomDrawerTile(
                    function: () {},
                    title: "Logout",
                    image: "assets/images/face.jpg",
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
