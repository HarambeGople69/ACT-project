import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/class_note_models.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_class_notes_tile.dart';

class ClassNotes extends StatefulWidget {
  const ClassNotes({Key? key}) : super(key: key);

  @override
  _ClassNotesState createState() => _ClassNotesState();
}

class _ClassNotesState extends State<ClassNotes> {
  List<ClassNoteModel> notesList = [
    ClassNoteModel(
      title: "First term English",
      subject: "Eng",
      date: "24-Feb-2021,",
      path: "images/english.pdf",
    ),
    ClassNoteModel(
      title: "First term Math",
      subject: "Math",
      date: "24-Feb-2021,",
      path: "images/math.pdf",
    ),
    ClassNoteModel(
      title: "First term Nepali ",
      subject: "Nep",
      date: "24-Feb-2021,",
      path: "images/nepali.pdf",
    ),
    ClassNoteModel(
      title: "First term Science ",
      subject: "Sci",
      date: "24-Feb-2021,",
      path: "images/science.pdf",
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
            // CustomClass(
            //         title: "First term English ",
            //         subject: "Eng",
            //         date: "24-Feb-2021,",
            //         path: "images/english.pdf",
            //       ),
            Expanded(
                child: ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                return CustomClass(
                    title: notesList[index].title,
                    subject: notesList[index].subject,
                    date: notesList[index].date,
                    path: notesList[index].path);
              },
            ))
          ],
        ),
      ),
    );
  }
}
