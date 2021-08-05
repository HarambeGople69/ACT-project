import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_circular_attachment.dart';

class CircularTab extends StatefulWidget {
  const CircularTab({Key? key}) : super(key: key);

  @override
  _CircularTabState createState() => _CircularTabState();
}

class _CircularTabState extends State<CircularTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(15),
          vertical: ScreenUtil().setSp(10),
        ),
        child: Column(
          children: [
            Text(
              "Please pull down from top of the screen and release to get the latest updates.",
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
                child: ListView(
              children: [
                CustomAttachment(
                  title: "Creative Writing circular",
                  circularFor: "Circular For: 16-Mar-2021",
                  circularAdded: "Circular Added on: 16-Mar-2021",
                ),
                CustomAttachment(
                  title: "Kids online dance class -ISEK",
                  circularFor: "Circular For: 14-Mar-2021",
                  circularAdded: "Circular Added on: 14-Mar-2021",
                ),
                CustomAttachment(
                  title: "Bollywood Dance Class for women",
                  circularFor: "Circular For: 14-Mar-2021",
                  circularAdded: "Circular Added on: 14-Mar-2021",
                ),
                CustomAttachment(
                  title: "Kids online dance class -ISEK",
                  circularFor: "Circular For: 14-Mar-2021",
                  circularAdded: "Circular Added on: 14-Mar-2021",
                ),
                CustomAttachment(
                  title: "Bollywood Dance Class for women",
                  circularFor: "Circular For: 14-Mar-2021",
                  circularAdded: "Circular Added on: 14-Mar-2021",
                ),
                CustomAttachment(
                  title: "Arshad-in India Book of Records",
                  circularFor: "Circular For: 10-Mar-2021",
                  circularAdded: "Circular Added on: 10-Mar-2021",
                ),
                CustomAttachment(
                  title: "INTERNATIONAL WOMENS DAY interaction session today",
                  circularFor: "Circular For: 08-Mar-2021",
                  circularAdded: "Circular Added on: 08-Mar-2021",
                ),
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.filter,
          size: ScreenUtil().setSp(
            25,
          ),
        ),
      ),
    );
  }
}
