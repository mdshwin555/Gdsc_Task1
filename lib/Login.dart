import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:taskgdsc/CostomField.dart';
import 'package:taskgdsc/Register.dart';
import 'package:taskgdsc/Validator.dart';
import 'package:taskgdsc/task2.dart';

class Login extends StatelessWidget {
  TextEditingController EmailController =
      TextEditingController(); //Text Field   Controller
  TextEditingController PasswordController =
      TextEditingController(); //Text Field   Controller
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //for Start form under notification Bar
      child: Scaffold(
        resizeToAvoidBottomInset: false, //to avoid Bottom Inset
        body: SingleChildScrollView(
          child: Form(
            key:_formKey ,
            child: Column(
              children: [
                ClipPath(   // to make custom shape
                  clipper: CustopClipper(),
                  child: Container(
                    height: 20.h,
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: "Courgette",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // to make height space
                  height: 5.h,
                ),
                Column(
                  children: [
                    CustomFields(
                      validator: Validators.email,
                      //email text field
                      label: "email",
                      isPass: false,
                      isPhone: false,
                      isEmail: true,
                      controller: EmailController,
                      icon: Icon(Icons.email_outlined),
                    ),
                    CustomFields(
                      validator: Validators.password,

                      ///password text field
                      label: "Password",
                      isPass: true,
                      isPhone: false,
                      isEmail: false,
                      controller: PasswordController,
                      icon: Icon(Icons.lock_open),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                GestureDetector(
                  onTap: () {
                    if (!_formKey.currentState!.validate()) {
                    } else {
                      Get.to(Task2());
                    }
                  },
                  child: Container(
                    // Register bottom
                    margin: EdgeInsets.only(bottom: 2.h),
                    height: 7.5.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: "Courgette",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Register());
                  },
                  child: Container(
                    //Login  bottom
                    height: 7.5.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.sp),
                        border:
                            Border.all(color: Colors.deepPurple, width: 2.sp)),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: "Courgette",
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(
        w * 0.0008020, h * 0.5985000, w * 0.0010693, h * 0.7980000);
    path.cubicTo(w * 0.2622434, h * 0.5910000, w * 0.7396814, h * 1.1090000,
        w * 0.9987169, h * 0.7940000);
    path.quadraticBezierTo(w * 0.9989842, h * 0.5955000, w * 0.9997861, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
