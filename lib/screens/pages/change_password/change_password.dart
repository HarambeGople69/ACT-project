import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/our_sized_height.dart';
import 'package:myapp/widgets/password_field.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool old = false;
  bool news = false;
  bool confirm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: AppStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(20),
            vertical: ScreenUtil().setSp(10),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                PasswordForm(
                  controller: oldPasswordController,
                  title: "Old Password",
                  changesee: () {
                    setState(() {
                      old = !old;
                    });
                  },
                  see: old,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Cannot be empty";
                    }
                  },
                ),
                OurSizedHeight(),
                PasswordForm(
                  controller: newPasswordController,
                  title: "New Password",
                  changesee: () {
                    setState(() {
                      news = !news;
                    });
                  },
                  see: news,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Cannot be empty";
                    }
                  },
                ),
                OurSizedHeight(),
                PasswordForm(
                  controller: confirmPasswordController,
                  title: "Confirm Password",
                  changesee: () {
                    setState(() {
                      confirm = !confirm;
                    });
                  },
                  see: confirm,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Cannot be empty";
                    }
                  },
                ),
                OurSizedHeight(),
                OurButton(
                  title: "Submit",
                  function: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
