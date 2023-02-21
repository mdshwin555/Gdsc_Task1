import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:taskgdsc/CostomField.dart';

class Login extends StatelessWidget {
  TextEditingController FullNmaeController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            ClipPath(
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
              height: 5.h,
            ),
            Form(
              autovalidateMode:AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                children: [
                  CustomFields(
                    label: "Full Name",
                    isPass: false,
                    isPhone: false,
                    isEmail: false,
                    controller: FullNmaeController,
                    icon: Icon(Icons.person_pin_outlined),
                  ),
                  CustomFields(
                    label: "email",
                    isPass: false,
                    isPhone: false,
                    isEmail: true,
                    controller: EmailController,
                    icon: Icon(Icons.email_outlined),
                  ),
                  CustomFields(
                    label: "Password",
                    isPass: true,
                    isPhone: false,
                    isEmail: false,
                    controller: PasswordController,
                    icon: Icon(Icons.lock_open),
                  ),
                  CustomFields(
                    label: "Confirm Password",
                    isPass: true,
                    isPhone: false,
                    isEmail: false,
                    controller: ConfirmPasswordController,
                    icon: Icon(Icons.lock_open),
                  ),
                  CustomFields(
                    label: "Phone Number",
                    isPass: false,
                    isPhone: true,
                    isEmail: false,
                    controller: PhoneController,
                    icon: Icon(Icons.phone_android),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2.h),
              height: 7.5.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: "Courgette",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 7.5.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: Colors.deepPurple,width: 2.sp)
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: "Courgette",
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
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
class CustopClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w=size.width;
    double h=size.height;
    Path path = Path();
    path.moveTo(0,0);
    path.quadraticBezierTo(size.width*0.0008020,size.height*0.5985000,size.width*0.0010693,size.height*0.7980000);
    path.cubicTo(size.width*0.2622434,size.height*0.5910000,size.width*0.7396814,size.height*1.1090000,size.width*0.9987169,size.height*0.7940000);
    path.quadraticBezierTo(size.width*0.9989842,size.height*0.5955000,size.width*0.9997861,0);
    path.lineTo(0,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) {
    return false;
  }

}
