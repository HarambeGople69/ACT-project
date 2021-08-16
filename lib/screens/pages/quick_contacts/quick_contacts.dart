import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/quick_contacts_model.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/our_sized_height.dart';

class QuickContact extends StatefulWidget {
  const QuickContact({Key? key}) : super(key: key);

  @override
  _QuickContactState createState() => _QuickContactState();
}

class _QuickContactState extends State<QuickContact> {
  List<QuickContactModel> contactList = [
    QuickContactModel(
      title: "Mrs Lata Rani",
      subtitle: "Class Teacher- Subject-Hindi",
    ),
    QuickContactModel(
      title: "Mrs Rajam M",
      subtitle: "Subject Teacher- English",
    ),
    QuickContactModel(
      title: "Mrs Shaita Hajira",
      subtitle: "Subject Teacher- Environmental Studies",
    ),
    QuickContactModel(
      title: "Mrs Syeda Afreen",
      subtitle: "Subject Teacher- Arabic",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quick Contacts",
          style: AppStyle,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(20),
          vertical: ScreenUtil().setSp(10),
        ),
        child: Column(
          children: [
            Text(
              "-Teachers should be contacted only for a genuine reason. Academic related matters of your ward only to be discussed throught the phone.",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(17),
                color: Colors.blue[600],
              ),
            ),
            OurSizedHeight(),
            Text(
              "-Calls should be made at the stipulated time from 5.00 PM to 6.30 PM",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(17),
                color: Colors.blue[600],
              ),
            ),
            OurSizedHeight(),
            Text(
              "-No calls will be entertained before or after this timing. Calls should be made only on working days.",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(17),
                color: Colors.blue[600],
              ),
            ),
            OurSizedHeight(),
            Text(
              "-No Whatsapp group to be formed or messages to be sent to the given contact number",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(17),
                color: Colors.blue[600],
              ),
            ),
            Divider(),
            OurSizedHeight(),
            Expanded(
              child: ListView.builder(
                  itemCount: contactList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(
                        contactList[index].title[0],
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(30),
                          color: Colors.blue[400],
                        ),
                      ),
                      title: Text(
                        contactList[index].title,
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(20),
                          color: Colors.blue[600],
                        ),
                      ),
                      subtitle: Text(
                        contactList[index].subtitle,
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey[600],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
