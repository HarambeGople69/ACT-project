import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/controllers/network_request/login_request.dart';
import 'package:myapp/screens/auth/sign_up.dart';
import 'package:myapp/widgets/custom_text_field.dart';
import 'package:myapp/widgets/our_sized_height.dart';
import 'package:myapp/widgets/our_text_field.dart';
import 'package:myapp/widgets/password_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email_Controller = TextEditingController();
  final _password_Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final TapGestureRecognizer OnTap = TapGestureRecognizer()
    ..onTap = () {
      print("Its tapped");
    };

  bool see = true;
  bool isApiCallProcess = false;
  LoginRequestModel? loginRequestModel;

  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel();
  }

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
              // Spacer(),
              SizedBox(
                height: ScreenUtil().setSp(450),
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(120),
                  fontWeight: FontWeight.w500,
                ),
              ),
              OurSizedHeight(),
              Text(
                "Please sign in to continue",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(70),
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
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
                            "LOGIN ",
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
                height: ScreenUtil().setSp(570),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(50),
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          )
                          // style: paratext,
                          ),
                      TextSpan(
                        text: 'Sign up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }));
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
              OurSizedHeight(),
            ],
          ),
        ),
      ),
    ));
  }
}
