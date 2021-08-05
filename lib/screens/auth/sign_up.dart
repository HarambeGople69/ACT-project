import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/custom_text_field.dart';
import 'package:myapp/widgets/our_sized_height.dart';
import 'package:myapp/widgets/password_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _email_Controller = TextEditingController();
  final _password_Controller = TextEditingController();
  final _password_confirm_Controller = TextEditingController();
  bool see = true;
  bool see_confirm = true;
  // final TapGestureRecognizer OnTap = TapGestureRecognizer()
  //   ..onTap = () {
  //     print("Its tapped");
  //   };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(40),
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenUtil().setSp(400),
                ),
                Text(
                  "Create account",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(120),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                OurSizedHeight(),
                CustomTextField(
                  type: TextInputType.name,
                  title: "Full name",
                  icon: Icons.person,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Cannot be empty";
                    }
                  },
                  controller: _email_Controller,
                ),
                OurSizedHeight(),
                CustomTextField(
                  type: TextInputType.number,
                  title: "Student ID",
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Cannot be empty";
                    }
                  },
                  controller: _email_Controller,
                ),
                OurSizedHeight(),
                CustomTextField(
                  type: TextInputType.emailAddress,
                  title: "Email",
                  icon: Icons.email,
                  validator: (value) {
                    if (value.isNotEmpty && value.contains("@")) {
                      return null;
                    } else {
                      return "Invalid email";
                    }
                  },
                  controller: _email_Controller,
                ),
                OurSizedHeight(),
                PasswordForm(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Cannot be empty";
                    }
                  },
                  title: "Password",
                  controller: _password_Controller,
                  see: see,
                  changesee: () {
                    setState(() {
                      see = !see;
                    });
                  },
                ),
                OurSizedHeight(),
                PasswordForm(
                  validator: (value) {
                    if (_password_Controller.text ==
                        _password_confirm_Controller.text) {
                      return null;
                    } else {
                      return "Password didn't match";
                    }
                  },
                  title: "Confirm password",
                  controller: _password_confirm_Controller,
                  see: see_confirm,
                  changesee: () {
                    setState(() {
                      see_confirm = !see_confirm;
                    });
                  },
                ),
                OurSizedHeight(),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          print("object");
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(
                          15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color(
                                0xfff7c457,
                              ),
                              Color(
                                0xfffea23b,
                              ),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "SIGN UP ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setSp(220),
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(50),
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )
                            // style: paratext,
                            ),
                        TextSpan(
                          text: 'Sign in',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                          style: TextStyle(
                            color: Color(
                              0xfffea23b,
                            ),
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(50),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 30,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
