import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';

import 'circular_tab.dart';

class CircularPage extends StatefulWidget {
  const CircularPage({Key? key}) : super(key: key);

  @override
  _CircularPageState createState() => _CircularPageState();
}

class _CircularPageState extends State<CircularPage> {
  List<Widget> display = [
    CircularTab(),
    Center(
      child: Text("Starred Circular"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Circular",
            style: AppStyle,
          ),
          centerTitle: true,
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: ScreenUtil().setSp(20),
            ),
            tabs: [
              Tab(
                text: "Circular",
              ),
              Tab(
                text: "Starred Circular",
              ),
            ],
          ),
        ),
        body: TabBarView(children: display),
      ),
    );
  }
}
