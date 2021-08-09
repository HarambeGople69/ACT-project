import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/pages/assignment/assignment.dart';
import 'package:myapp/screens/pages/circular/circular.dart';
import 'package:myapp/screens/pages/class_notes/class_notes.dart';
import 'package:myapp/screens/pages/fee/fee.dart';
import 'package:myapp/screens/pages/gallery/gallery.dart';
import 'package:myapp/screens/pages/student_corner/student_corner.dart';
import 'package:myapp/utils/custom_clipper.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_drawer.dart';
import 'package:myapp/widgets/home_feature_buttons.dart';
import 'package:myapp/widgets/our_sized_height.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _launchUrl() async {
    final url = 'https://actnepal1.lyvenote.app';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Can't launch");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Dashboard",
          style: AppStyle,
        ),
      ),
      backgroundColor: Color(0xffe6e6e6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: ScreenUtil().setSp(450),
              child: Stack(
                clipBehavior: Clip.none,
                // alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: ScreenUtil().setSp(250),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(ScreenUtil().setSp(105)),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setSp(15),
                        vertical: ScreenUtil().setSp(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Adm No: 218062", style: infoStyle),
                                  Text("ICSK Junior (1-f)", style: infoStyle),
                                  Text(
                                    "(Acdm Year: 2020-21)",
                                    style: infoStyle,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: ScreenUtil().setSp(30),
                                    backgroundImage: AssetImage(
                                      "images/face.jpg",
                                    ),
                                  ),
                                  OurSizedHeight(),
                                  Text(
                                    "Utsav Shrestha",
                                    style: BoldinfoStyle,
                                  ),
                                  OurSizedHeight(),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setSp(115),
                    left: ScreenUtil().setSp(10),
                    right: ScreenUtil().setSp(10),
                    child: Container(
                      margin: EdgeInsets.only(),
                      width: MediaQuery.of(context).size.width,
                      height: ScreenUtil().setSp(350),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(
                          ScreenUtil().setSp(
                            ScreenUtil().setSp(
                              20,
                            ),
                          ),
                        ),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(
                        ScreenUtil().setSp(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FeatureButton(
                                color: Color(0xffc2444f),
                                function: () {
                                  // print("object");
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return CircularPage();
                                  }));
                                },
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(
                                      0xfff0545f,
                                    ),
                                    Color(
                                      0xfff96679,
                                    ),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "Circular",
                              ),
                              FeatureButton(
                                color: Color(0xff55a862),
                                function: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ClassNotes();
                                  }));
                                },
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(0xff62ce78),
                                    Color(0xff97d96f),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "Class\nNotes",
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 200,
                          // ),

                          Row(
                            children: [
                              FeatureButton(
                                color: Color(0xff3091c8),
                                function: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Gallery();
                                  }));
                                },
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(0xff41b2fe),
                                    Color(0xff22c0fd),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "Gallery",
                              ),
                              FeatureButton(
                                color: Color(0xffaa5abb),
                                function: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Fee();
                                  }));
                                },
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(0xffce72ee),
                                    Color(0xffee71d5),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "Fee",
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              FeatureButton(
                                color: Color(0xffc3830d),
                                function: () {},
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(0xfff79e0d),
                                    Color(0xfffab414),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "Academic\nPerformance",
                              ),
                              FeatureButton(
                                color: Color(0xff5868d3),
                                function: () {
                                  print("object");
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return StudentCorner();
                                  }));
                                },
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(0xff717ffc),
                                    Color(0xff6095fd),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "Student\nCorner",
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              FeatureButton(
                                color: Color(0xff55a862),
                                function: () {
                                  _launchUrl();
                                },
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(0xff62ce78),
                                    Color(0xff97d96f),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "Live class",
                              ),
                              FeatureButton(
                                color: Color(0xff3091c8),
                                function: () {},
                                linearGradient: LinearGradient(
                                  colors: [
                                    Color(0xff41b2fe),
                                    Color(0xff22c0fd),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                title: "aLearning",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Text("data"),
            SizedBox(
              height: ScreenUtil().setSp(10),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Assignment();
                }));
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setSp(10),
                    vertical: ScreenUtil().setSp(10)),
                // padding: EdgeInsets.symmetric(
                //   horizontal: ScreenUtil().setSp(5),
                //   vertical: ScreenUtil().setSp(5),
                // ),
                // width: double.infinity,
                height: ScreenUtil().setSp(
                  110,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(ScreenUtil().setSp(30)),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipPath(
                        clipper: ArcClipper(),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setSp(20),
                            vertical: ScreenUtil().setSp(20),
                          ),
                          // width: double.infinity / 2,
                          decoration: BoxDecoration(
                              color: Color(0xffb356c8),
                              borderRadius: BorderRadius.all(
                                Radius.circular(ScreenUtil().setSp(30)),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Assignmnet",
                                style: BoldinfoStyle,
                              ),
                              Text(
                                "View and submit your homework",
                                style: infoStyle,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "View all",
                                    style: infoStyle,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: ScreenUtil().setSp(25),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      "images/2.png",
                      fit: BoxFit.cover,
                      width: ScreenUtil().setSp(
                        80,
                      ),
                    ),
                    // Text("data"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setSp(
                  10,
                ),
              ),
              child: Text(
                "Last updated on: 18-Mar-2021 04:03 PM",
                style: infoStyle.copyWith(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(
                    17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
