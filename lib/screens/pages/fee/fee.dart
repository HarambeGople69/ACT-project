import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/pages/fee/installment_tab.dart';
import 'package:myapp/utils/styles.dart';

class Fee extends StatefulWidget {
  const Fee({Key? key}) : super(key: key);

  @override
  _FeeState createState() => _FeeState();
}

class _FeeState extends State<Fee> {
  List<Widget> display = [
    Installment(),
    Center(
      child: Text("History"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                "Fees",
                style: AppStyle,
              ),
            ],
          ),
          centerTitle: true,
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: ScreenUtil().setSp(20),
            ),
            isScrollable: true,
            tabs: [
              Tab(
                text: "Installment",
              ),
              Tab(
                text: "History",
              ),
            ],
          ),
        ),
        body: TabBarView(children: display),
      ),
    );
  }
}
