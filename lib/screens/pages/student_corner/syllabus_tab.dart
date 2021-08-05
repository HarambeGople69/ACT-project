import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/custom_download_row.dart';
import 'package:myapp/widgets/custom_expansion_tile.dart';

class Syllabus extends StatefulWidget {
  const Syllabus({Key? key}) : super(key: key);

  @override
  _SyllabusState createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(15),
            vertical: ScreenUtil().setSp(10),
          ),
          child: Column(
            children: [
              CustomExpansiontile(
                title: "English",
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title:
                          "Class-I English reviesed syllabus for 2nd and 3rd Term",
                      function: () {
                        print("Download");
                      },
                    ),
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title: "Class-I English DIVIDED SYLLABUS 2020-2021,",
                      function: () {
                        print("Download");
                      },
                    ),
                  ],
                ),
              ),
              CustomExpansiontile(
                title: "Math",
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title:
                          "Class-I Math reviesed syllabus for 2nd and 3rd Term",
                      function: () {
                        print("Download");
                      },
                    ),
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title: "Class-I MATHEMATICS DIVIDED SYLLABUS 2020-2021,",
                      function: () {
                        print("Download");
                      },
                    ),
                  ],
                ),
              ),
              CustomExpansiontile(
                title: "Science",
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title:
                          "Class-I Science reviesed syllabus for 2nd and 3rd Term",
                      function: () {
                        print("Download");
                      },
                    ),
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title: "Class-I Science DIVIDED SYLLABUS 2020-2021,",
                      function: () {
                        print("Download");
                      },
                    ),
                  ],
                ),
              ),
              CustomExpansiontile(
                title: "Drawing",
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title:
                          "Class-I Drawing reviesed syllabus for 2nd and 3rd Term",
                      function: () {
                        print("Download");
                      },
                    ),
                    CustomDownloadRow(
                      seePDF: () {
                        print("Hera");
                      },
                      title: "Class-I Drawing DIVIDED SYLLABUS 2020-2021,",
                      function: () {
                        print("Download");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
