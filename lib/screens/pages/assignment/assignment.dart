import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/assignment_models.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_assignment_info.dart';

class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  List<AssignmentModel> assignmentList = [
    AssignmentModel(
      title: "English",
      assignedDate: "21-Feb-2021",
      status: "Pending",
      deadline: "28-feb-2021",
      deadlineTime: "11:59 PM",
      path: "images/english.pdf",
    ),
    AssignmentModel(
      title: "Science",
      assignedDate: "21-Jan-2021",
      status: "Approved",
      deadline: "28-Jan-2021",
      deadlineTime: "11:59 PM",
      path: "images/science.pdf",
    ),
    AssignmentModel(
      title: "Math",
      assignedDate: "21-May-2021",
      status: "Pending",
      deadline: "28-May-2021",
      deadlineTime: "11:59 PM",
      path: "images/math.pdf",
    ),
    AssignmentModel(
      title: "Nepali",
      assignedDate: "21-Apr-2021",
      status: "Denied",
      deadline: "28-Apr-2021",
      deadlineTime: "11:59 PM",
      path: "images/nepali.pdf",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            ScreenUtil().setSp(
              100,
            ),
          ),
          child: AppBar(
            title: Text(
              "Assignment",
              style: AppStyle,
            ),
            centerTitle: true,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(15),
            vertical: ScreenUtil().setSp(10),
          ),
          child: Column(
            children: [
              Text(
                "Please pull down from top of the screen and release to get the latest update",
                style: BlueinfoStyle,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    size: ScreenUtil().setSp(
                      20,
                    ),
                  ),
                  labelText: "Search",
                  labelStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: assignmentList.length,
                      itemBuilder: (context, index) {
                        return AssignmentInfo(
                          title: assignmentList[index].title,
                          assignedDate: assignmentList[index].assignedDate,
                          status: assignmentList[index].status,
                          deadline: assignmentList[index].deadline,
                          deadlineTime: assignmentList[index].deadlineTime,
                          path: assignmentList[index].path,
                        );
                      }))
            ],
          ),
        ));
  }
}
