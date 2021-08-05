import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/pages/student_corner/syllabus_tab.dart';
import 'package:myapp/utils/styles.dart';

class StudentCorner extends StatefulWidget {
  const StudentCorner({Key? key}) : super(key: key);

  @override
  _StudentCornerState createState() => _StudentCornerState();
}

class _StudentCornerState extends State<StudentCorner> {
  List<Widget> display = [
    Syllabus(),
    Syllabus(),
    Syllabus(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Student corner",
            style: AppStyle,
          ),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            labelStyle: TextStyle(
              fontSize: ScreenUtil().setSp(18),
            ),
            tabs: [
              Container(
                child: Tab(
                  text: "Syllabus",
                ),
              ),
              Container(
                child: Tab(
                  text: "Past question paper",
                ),
              ),
              Container(
                child: Tab(
                  text: "Question",
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: display),
      ),
    );
  }
}
