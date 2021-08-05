import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_class_notes_tile.dart';

class ClassNotes extends StatefulWidget {
  const ClassNotes({Key? key}) : super(key: key);

  @override
  _ClassNotesState createState() => _ClassNotesState();
}

class _ClassNotesState extends State<ClassNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          120,
        ),
        child: AppBar(
          title: Text(
            "Class Notes",
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
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setSp(10),
                ),
                child: Text(
                  "Feb 2021",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(
                      25,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                CustomClass(
                  title: "Workbook worksheet 7 Answer key",
                  subject: "Eng",
                  date: "24-Feb-2021,",
                ),
                CustomClass(
                  title: "Workbook worksheet 6 Answer key",
                  subject: "Eng",
                  date: "24-Feb-2021,",
                ),
                CustomClass(
                  title: "Unit 6 - The Selfish Tree",
                  subject: "Eng",
                  date: "24-Feb-2021,",
                ),
                CustomClass(
                  title: "TERM 3- COMMON NOTES",
                  subject: "Eng",
                  date: "24-Feb-2021,",
                ),
                CustomClass(
                  title: "Workbook worksheet 7 Answer key",
                  subject: "Eng",
                  date: "24-Feb-2021,",
                ),
                CustomClass(
                  title: "Workbook worksheet 7 Answer key",
                  subject: "Eng",
                  date: "24-Feb-2021,",
                ),
                CustomClass(
                  title: "Workbook worksheet 7 Answer key",
                  subject: "Eng",
                  date: "24-Feb-2021,",
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
